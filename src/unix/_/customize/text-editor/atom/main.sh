#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_ATOM_NOT_INSTALLED_FOR_LOCAL_USER="Atom is not installed for local user"
_MSG_DIRECTORY_DOESNT_EXISTS="The directory '$HOME/.atom' doesn't exists."
_MSG_NODEJS_MUST_BE_INSTALLED="NodeJS needs to be installed before customize Atom."
_MSG_CUSTOMIZING_ATOM="Customizing Atom text editor"
_MSG_CHECKING_INSTALLED_ATOM_PACKAGES="Checking Atom packages installed..."
_MSG_CONFIGURING_EDITOR="Setting up editor..."
_MSG_DISABLING_INCOMPATIBLE_PACKAGES="Disabling incompatible packages..."
_MSG_ERROR_INSTALLING_ATOM_PACKAGE="An error happen installing the Atom package"
_MSG_ERROR_DISABLING_ATOM_PACKAGE="An error happen disabling the Atom package"

# Instalación de paquetes de utilidad para Atom

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

if [ ! -d ~/.atom ]; then
  printf "%s ($USER).\n" "$_MSG_ATOM_NOT_INSTALLED_FOR_LOCAL_USER"
  printf "%s\n" "$_MSG_DIRECTORY_DOESNT_EXISTS"
  exit 1
fi;

if [ "$(command -v node)" = "" ]; then
  printf "%s\n" "$_MSG_NODEJS_MUST_BE_INSTALLED" >&2
  exit 1
fi;

INDENT_STRING=""

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}

if [ "$(command -v pacman)" = "" ]; then
  SCRIPT_FILENAME="$(basename "$0")"
  if [ "$SCRIPT_FILENAME" = "main.sh" ]; then
    filepath="src/unix/_/download/pacapt/main.sh"
    bash "$filepath" > /dev/null
  else
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
fi;

if [[ "$(sudo pacman -Qi curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo pacman -S curl > /dev/null || exit $?
fi;

# Versión de Atom
ATOM_VERSION=$(
  apm -v | \
  sed -n 4p | \
  cut -d' ' -f2 | \
  sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")

printIndent
printf "%s (v%s)...\n" "$_MSG_CUSTOMIZING_ATOM" "$ATOM_VERSION"
printIndent
printf "  %s\n" "$_MSG_CHECKING_INSTALLED_ATOM_PACKAGES"

# Paquetes de Atom instalados
_ATOM_PACKAGES_INSTALLED="$(apm list --installed --bare)"

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

for PACKAGE in "${_ATOM_PACKAGES_TO_INSTALL[@]}"; do
  _PACKAGE_FLAGS="$(printf "%s" "$PACKAGE" | cut -d' ' -f1)"
  if [ "$_PACKAGE_FLAGS" != "" ]; then
    PACKAGE=$(printf "%s" "$PACKAGE" | cut -d' ' -f2)
  fi;
  printIndent
  printf "    %s" "$PACKAGE"
  if [[ "$(printf "%s" "$_ATOM_PACKAGES_INSTALLED" | grep "$PACKAGE")" = "" ]]; then
    _AMP_INSTALL_STDERR="$(apm install "$_PACKAGE_FLAGS $PACKAGE" 2>&1 > /dev/null)"
    _AMP_INSTALL_EXIT_CODE=$?
    if [ $_AMP_INSTALL_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s '%s':\n" "$_MSG_ERROR_INSTALLING_ATOM_PACKAGE" "$PACKAGE" >&2
      printf "%s\n" "$_AMP_INSTALL_STDERR" >&2
      exit $_AMP_INSTALL_EXIT_CODE
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done

# Configuramos el editor
yarn install --silent --no-progress --ignore-optional --non-interactive
printIndent
printf "  %s" "$_MSG_CONFIGURING_EDITOR"
curl -sL https://mondeja.github.io/shread/_/customize/text-editor/atom/configure.js | \
  node - \
  exit $?
printf " \e[92m\xE2\x9C\x94\e[39m\n"

printIndent
printf "  %s\n" "$_MSG_DISABLING_INCOMPATIBLE_PACKAGES"
# Deshabilitamos paquetes
# - El paquete whitespace choca con la configuración
#     de los archivos .editorconfig
_ATOM_PACKAGES_TO_DISABLE=(
  "whitespace"
)
for PACKAGE in "${_ATOM_PACKAGES_TO_DISABLE[@]}"; do
  printIndent
  printf "    %s" "$PACKAGE"
  _AMP_DISABLE_STDERR="$(sudo -u "$SUDO_USER" apm disable "$PACKAGE" 2>&1 > /dev/null)"
  _AMP_DISABLE_EXIT_CODE=$?
  if [ $_AMP_DISABLE_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s '%s':\n" "$_MSG_ERROR_DISABLING_ATOM_PACKAGE" "$PACKAGE" >&2
    printf "%s\n" "$_AMP_DISABLE_STDERR" >&2
    exit $_AMP_DISABLE_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done
