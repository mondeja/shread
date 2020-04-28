#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

# Indica si debemos actualizar (por defecto, no, hasta que
#   Boostnote no llegue a la versión 1.0.0)
_UPDATE=0

for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
        shift
        ;;

        --update)
        shift
        _UPDATE=1
        shift
        ;;
    esac
done

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

ARCH=""
case $(uname -m) in
    i386)   ARCH="386" ;;
    i686)   ARCH="386" ;;
    x86_64) ARCH="amd64" ;;
    arm)    dpkg --print-architecture | grep -q "arm64" && ARCH="arm64" || ARCH="arm" ;;
esac

# Si suceden errrores 404 con las últimas versiones de Docker,
#   intentamos obtener las anteriores
_GET_BOOSTNOTE_VERSION_INDEX=0
_GET_BOOSTNOTE_VERSION_404_ATTEMPTS=0
_GET_BOOSTNOTE_VERSION_404_MAX_ATTEMPTS=10
function checkBoostnoteVersionToDownloadExists() {
  _DOWNLOAD_BOOSTNOTE_URL="https://github.com/BoostIO/boost-releases/releases/download/v$_BOOSTNOTE_LASTEST_VERSION/boostnote_${_BOOSTNOTE_LASTEST_VERSION}_$ARCH.deb"
  _DOWNLOAD_BOOSTNOTE_URL_EXISTS=0
  if curl --output /dev/null --silent --head --fail "$_DOWNLOAD_BOOSTNOTE_URL"; then
    _DOWNLOAD_BOOSTNOTE_URL_EXISTS=1
  fi;
}

_GET_BOOSTNOTE_LATEST_VERSION_ATTEMPTS=0
_GET_BOOSTNOTE_LATEST_VERSION_MAX_ATTEMPTS=5
_GET_BOOSTNOTE_LATEST_VERSION_URL=https://api.github.com/repos/BoostIO/boost-releases/releases
function getBoostnoteLatestVersion() {
  _BOOSTNOTE_RELEASES_INFO=$(curl -s $_GET_BOOSTNOTE_LATEST_VERSION_URL 2>&1)
  _BOOSTNOTE_RELEASES_INFO_MESSAGE=$(echo $_BOOSTNOTE_RELEASES_INFO | jq -r '.message' 2>&1)
  _BOOSTNOTE_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_BOOSTNOTE_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la información de las releases de Docker" >&2
    printf " Compose de la API de Github.\nUrl: $_GET_BOOSTNOTE_LATEST_VERSION_URL\n" >&2
    printf "Error: $_BOOSTNOTE_RELEASES_INFO_MESSAGE\n" >&2
    exit $_BOOSTNOTE_RELEASES_INFO_EXIT_CODE
  fi;

  # Obtenemos la penúltima release de Boostnote
  #   El problema de obtener la última release es que,
  #   al momento de ser publicada, los binarios aún no
  #   están disponibles en el repositorio
  _PARSE_BOOSTNOTE_LASTEST_VERSION=$(
    echo $_BOOSTNOTE_RELEASES_INFO | \
    jq -r ".[$_GET_BOOSTNOTE_VERSION_INDEX].name" 2>&1
  )
  _PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error parseando la penúltima versión de" >&2
    printf " las releases de Boostnote de la API de Github.\n" >&2
    printf "Url: $_GET_BOOSTNOTE_LATEST_VERSION_URL\n"
    printf "Código de error: $_PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE\n" >&2
    printf "Error: $_PARSE_BOOSTNOTE_LASTEST_VERSION"
    exit $_PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE
  fi;

  _BOOSTNOTE_LASTEST_VERSION=$(echo $_PARSE_BOOSTNOTE_LASTEST_VERSION | cut -d'v' -f2 2>&1)
  _GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    let "_GET_BOOSTNOTE_LATEST_VERSION_ATTEMPTS++"
    if [ $_GET_BOOSTNOTE_LATEST_VERSION_ATTEMPTS -ge $_GET_BOOSTNOTE_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\nOcurrió un error obteniendo la última versión de Boostnote.\n" >&2
      printf "Url: $_GET_BOOSTNOTE_LATEST_VERSION_URL\n" >&2
      printf "Código de error: $_GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE\n" >&2
      printf "Error: $_BOOSTNOTE_LASTEST_VERSION"
      exit $_GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE
    else
      getBoostnoteLatestVersion
    fi;
  fi;

  checkBoostnoteVersionToDownloadExists
  if [ $_DOWNLOAD_BOOSTNOTE_URL_EXISTS -ne 1 ]; then
    let "_GET_BOOSTNOTE_VERSION_404_ATTEMPTS++"
    let "_GET_BOOSTNOTE_VERSION_INDEX++"
    getBoostnoteLatestVersion
  else
    printf " (v$_BOOSTNOTE_LASTEST_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}

function downloadBoostnote() {
  printPrependedStdout
  _DOWNLOAD_BOOSTNOTE_URL="https://github.com/BoostIO/boost-releases/releases/download/v$_BOOSTNOTE_LASTEST_VERSION/boostnote_${_BOOSTNOTE_LASTEST_VERSION}_$ARCH.deb"
  _DOWNLOAD_BOOSTNOTE_OUTPUT=$(sudo curl -sL $_DOWNLOAD_BOOSTNOTE_URL -o $1 2>&1)
  _DOWNLOAD_BOOSTNOTE_EXIT_CODE=$?
  if  [ $_DOWNLOAD_BOOSTNOTE_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error con la descarga de Boostnote v$_BOOSTNOTE_LASTEST_VERSION\n" >&2
    printf "Url: $_DOWNLOAD_BOOSTNOTE_URL\n" >&2
    printf "Error: $_DOWNLOAD_BOOSTNOTE_OUTPUT\n" >&2
    exit $_DOWNLOAD_BOOSTNOTE_EXIT_CODE
  fi;

  _BOOSTNOTE_BINARY_CONTENT=$(sudo cat $1 | tr -d '\0')
  if [ "$_BOOSTNOTE_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_BOOSTNOTE_VERSION_404_ATTEMPTS -ge $_GET_BOOSTNOTE_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f $1
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\nOcurrió un error con la descarga de Boostnote v$_BOOSTNOTE_LASTEST_VERSION\n" >&2
      printf "Url: $_DOWNLOAD_BOOSTNOTE_URL\n" >&2
      printf "Código de error: 404\n" >&2
      printf "Error: $_BOOSTNOTE_BINARY_CONTENT\n" >&2
      exit 404
    else
      printf " (Not found) \e[91m\xE2\x9C\x95\e[39m\n"
      let "_GET_BOOSTNOTE_VERSION_404_ATTEMPTS++"
      let "_GET_BOOSTNOTE_VERSION_INDEX++"
      getBoostnoteLatestVersion
      downloadBoostnote $1
    fi;
  fi;
}

function installBoostnote() {
  sudo dpkg -i $1 > /dev/null
  sudo rm -f $1
}
printPrependedStdout
printf "Comprobando Boostnote...\n"

INSTALLATION_DEPENDENCIES=(
  "curl"
  "jq"
)
for DEP in "${INSTALLATION_DEPENDENCIES[@]}"
do
  if [[ "$(sudo dpkg -s $DEP 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq $DEP > /dev/null || exit $?
  fi;
done

# Comprobamos si Boostnote está instalado
_BOOSTNOTE_BINARY_PATH=$(which boostnote)
_BOOSTNOTE_BINARY_PATH_EXIT_CODE=$?
if [ $_BOOSTNOTE_BINARY_PATH_EXIT_CODE -ne 0 ]; then
  _BOOSTNOTE_BINARY_PATH=""
fi;

_BOOSTNOTE_PACKAGE_JSON_FILEPATH="/lib/boostnote/resources/app/package.json"
if [ ! -f "$_BOOSTNOTE_PACKAGE_JSON_FILEPATH" ]; then
  _BOOSTNOTE_PACKAGE_JSON_FILEPATH="/usr/lib/boostnote/resources/app/package.json"
fi;

if [ "$_BOOSTNOTE_BINARY_PATH" = "" ] || [ ! -f "$_BOOSTNOTE_PACKAGE_JSON_FILEPATH" ]; then
  # Si no está instalado
  printPrependedStdout
  printf "  Obteniendo la última versión disponible..."
  getBoostnoteLatestVersion

  printPrependedStdout
  printf "  Descargando Boostnote (v${_BOOSTNOTE_LASTEST_VERSION})..."
  downloadBoostnote /tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
  printPrependedStdout
  printf "  Instalando Boostnote (v${_BOOSTNOTE_LASTEST_VERSION})..."
  installBoostnote /tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  # Pero si ya está instalado
  _BOOSTNOTE_INSTALLED_VERSION=$(
    sudo cat $_BOOSTNOTE_PACKAGE_JSON_FILEPATH | \
    grep '"version": ' | \
    cut -d'"' -f4
  )
  printPrependedStdout
	printf "  Encontrado Boostnote v$_BOOSTNOTE_INSTALLED_VERSION instalado en el sistema"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
  # Si no está actualizado a la última versión
  if [ "$_BOOSTNOTE_INSTALLED_VERSION" != "$_BOOSTNOTE_LASTEST_VERSION" ]; then
    if [ $_UPDATE -eq 1 ]; then

      printPrependedStdout
      printf "  Obteniendo la última versión disponible..."
      getBoostnoteLatestVersion

      printPrependedStdout
      printf "  Actualizando Boostnote (v$_BOOSTNOTE_INSTALLED_VERSION"
      printf " -> v$_BOOSTNOTE_LASTEST_VERSION)..."
      sudo rm -f $_BOOSTNOTE_BINARY_PATH
      downloadBoostnote /tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb
      installBoostnote /tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
    fi;
  fi;
fi;
