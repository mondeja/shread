#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Instalación de paquetes de utilidad para Atom

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

if [ ! -d ~/.atom ]; then
  printf "Atom no está instalado para el usuario actual ($USER).\n"
  printf "El directorio '$HOME/.atom' no existe.\n"
  exit 1
fi;

if [ "$(which node)" = "" ]; then
  printf "Necesitas instalar NodeJS antes de personalizar Atom.\n" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
        shift
        ;;
    esac
done

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq curl > /dev/null
fi;

# Versión de Atom
ATOM_VERSION=$(
  apm -v | \
  sed -n 4p | \
  cut -d' ' -f2 | \
  sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")

printPrependedStdout
printf "Personalizando el editor de textos Atom (v$ATOM_VERSION)...\n"
printPrependedStdout
printf "  Comprobando los paquetes de Atom v$ATOM_VERSION instalados...\n"

# Paquetes de Atom instalados
_ATOM_PACKAGES_INSTALLED=$(apm list --installed --bare)

# Iconos para archivos en Atom
#   https://atom.io/packages/file-icons
# Resaltado de sintaxis para archivos .bat
#   https://atom.io/packages/language-batchfile
# Mostrar los colores definidos en los archivos
#   https://atom.io/packages/pigments
# Indentar correctamente el código
#   https://atom.io/packages/atom-beautify
# Mostrar un mapa a la derecha del archivo abierto
#   https://atom.io/packages/color-picker
# Indentar correctamente el código
#   https://atom.io/packages/atom-beautify
# Mantener el número de pestañas abiertas
#   por debajo un límite establecido, cerrando
#   las más antiguas por orden de apertura
#   https://atom.io/packages/zentabs
# Configuración de proyecto mediante la
#   especificación .editorconfig
#   https://atom.io/packages/editorconfig
# Selector de color al hacer click derecho
#   a un nombre de color en un archivo
#   https://atom.io/packages/minimap
# Resaltar coincidencias seleccionadas
#   https://atom.io/packages/highlight-selected
# Ir a una función haciendo click derecho en
#   su nombre y seleccionando "Go to definition"
#   https://atom.io/packages/goto-definition
# Autocompletado de rutas a archivos
#   https://atom.io/packages/autocomplete-paths
# Linters (resaltado de errores):
#   https://atom.io/packages/linter
#   https://atom.io/packages/linter-ui-default
#   https://atom.io/packages/intentions
#   https://atom.io/packages/busy-signal
#   https://atom.io/packages/linter-csslint
#   https://atom.io/packages/linter-jsonlint
#   https://atom.io/packages/linter-swagger
#   https://atom.io/packages/linter-xmllint
#   https://atom.io/packages/minimap-linter
#   https://atom.io/packages/language-vue
_ATOM_PACKAGES_TO_INSTALL=(
  "--production file-icons"
  "language-batchfile"
  "pigments"
  "color-picker"
  "atom-beautify"
  "zentabs"
  "editorconfig"
  "minimap"
  "highlight-selected"
  "goto-definition"
  "autocomplete-paths"
  "linter"
  "linter-ui-default"
  "intentions"
  "busy-signal"
  "linter-csslint"
  "linter-jsonlint"
  "linter-swagger"
  "linter-xmllint"
  "minimap-linter"
  "language-vue"
)

for PACKAGE in "${_ATOM_PACKAGES_TO_INSTALL[@]}"
do
  _PACKAGE_FLAGS=$(echo $PACKAGE | cut -d' ' -f1)
  if [ "$_PACKAGE_FLAGS" != "" ]; then
    PACKAGE=$(echo $PACKAGE | cut -d' ' -f2)
  fi;
  printPrependedStdout
  printf "    $PACKAGE"
  if [[ "$(echo $_ATOM_PACKAGES_INSTALLED | grep $PACKAGE)" = "" ]]; then
    _AMP_INSTALL_STDERR=$(apm install $_PACKAGE_FLAGS $PACKAGE 2>&1 > /dev/null)
    _AMP_INSTALL_EXIT_CODE=$?
    if [ $_AMP_INSTALL_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\nOcurrió un error instalando el paquete de Atom '$PACKAGE':\n" >&2
      printf "$_AMP_INSTALL_STDERR\n"
      exit $_AMP_INSTALL_EXIT_CODE
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done

# Configuramos el editor
yarn install --silent --no-progress --ignore-optional --non-interactive
printPrependedStdout
printf "  Configurando el editor..."
curl -sL https://softmond.gitlab.io/scripts/_/customize/text-editor/atom/configure.js | \
  node - \
  exit $?
printf " \e[92m\xE2\x9C\x94\e[39m\n"

printPrependedStdout
printf "  Deshabilitando paquetes incompatibles...\n"
# Deshabilitamos paquetes
# - El paquete whitespace choca con la configuración
#     de los archivos .editorconfig
_ATOM_PACKAGES_TO_DISABLE=(
  "whitespace"
)
for PACKAGE in "${_ATOM_PACKAGES_TO_DISABLE[@]}"
do
  printPrependedStdout
  printf "    $PACKAGE"
  _AMP_DISABLE_STDERR=$(sudo -u "$SUDO_USER" apm disable $PACKAGE 2>&1 > /dev/null)
  _AMP_DISABLE_EXIT_CODE=$?
  if [ $_AMP_DISABLE_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error deshabilitando el paquete de Atom '$PACKAGE':\n" >&2
    printf "$_AMP_DISABLE_STDERR\n"
    exit $_AMP_DISABLE_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done
