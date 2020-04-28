#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
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

function installScriptDependencies() {
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
}

_GET_GOOGLE_DRIVE_VERSION_INDEX=0
_GET_GOOGLE_DRIVE_VERSION_404_ATTEMPTS=0
_GET_GOOGLE_DRIVE_VERSION_404_MAX_ATTEMPTS=10
function checkGoogleDriveVersionToDownloadExists() {
  _DOWNLOAD_GOOGLE_DRIVE_URL="https://github.com/gdrive-org/gdrive/releases/download/$_GOOGLE_DRIVE_LASTEST_VERSION/gdrive-linux-x64"
  _DOWNLOAD_GOOGLE_DRIVE_URL_EXISTS=0
  if curl --output /dev/null --silent --head --fail "$_DOWNLOAD_GOOGLE_DRIVE_URL"; then
    _DOWNLOAD_GOOGLE_DRIVE_URL_EXISTS=1
  fi;
}

_GET_GOOGLE_DRIVE_LATEST_VERSION_ATTEMPTS=0
_GET_GOOGLE_DRIVE_LATEST_VERSION_MAX_ATTEMPTS=5
_GET_GOOGLE_DRIVE_LATEST_VERSION_URL=https://api.github.com/repos/gdrive-org/gdrive/releases
function getGoogleDriveLatestVersion() {
  _GOOGLE_DRIVE_RELEASES_INFO=$(curl -s $_GET_GOOGLE_DRIVE_LATEST_VERSION_URL 2>&1)
  _GOOGLE_DRIVE_RELEASES_INFO_MESSAGE=$(echo $_GOOGLE_DRIVE_RELEASES_INFO | jq -r '.message' 2>&1)
  _GOOGLE_DRIVE_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_GOOGLE_DRIVE_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la información de las releases de Docker" >&2
    printf " Compose de la API de Github.\nUrl: $_GET_GOOGLE_DRIVE_LATEST_VERSION_URL\n" >&2
    printf "Error: $_GOOGLE_DRIVE_RELEASES_INFO_MESSAGE\n" >&2
    exit $_GOOGLE_DRIVE_RELEASES_INFO_EXIT_CODE
  fi;

  _PARSE_GOOGLE_DRIVE_LASTEST_VERSION=$(
    echo $_GOOGLE_DRIVE_RELEASES_INFO | \
    jq -r ".[$_GET_GOOGLE_DRIVE_VERSION_INDEX].tag_name" 2>&1
  )
  _PARSE_GOOGLE_DRIVE_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_GOOGLE_DRIVE_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error parseando la penúltima versión de" >&2
    printf " las releases de Google Drive de la API de Github.\n" >&2
    printf "Url: $_GET_GOOGLE_DRIVE_LATEST_VERSION_URL\n"
    printf "Código de error: $_PARSE_GOOGLE_DRIVE_LASTEST_VERSION_EXIT_CODE\n" >&2
    printf "Error: $_PARSE_GOOGLE_DRIVE_LASTEST_VERSION"
    exit $_PARSE_GOOGLE_DRIVE_LASTEST_VERSION_EXIT_CODE
  fi;

  _GOOGLE_DRIVE_LASTEST_VERSION=$(echo $_PARSE_GOOGLE_DRIVE_LASTEST_VERSION | cut -d'v' -f2 2>&1)
  _GET_GOOGLE_DRIVE_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_GOOGLE_DRIVE_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    let "_GET_GOOGLE_DRIVE_LATEST_VERSION_ATTEMPTS++"
    if [ $_GET_GOOGLE_DRIVE_LATEST_VERSION_ATTEMPTS -ge $_GET_GOOGLE_DRIVE_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\nOcurrió un error obteniendo la última versión de Google Drive.\n" >&2
      printf "Url: $_GET_GOOGLE_DRIVE_LATEST_VERSION_URL\n" >&2
      printf "Código de error: $_GET_GOOGLE_DRIVE_LATEST_VERSION_EXIT_CODE\n" >&2
      printf "Error: $_GOOGLE_DRIVE_LASTEST_VERSION"
      exit $_GET_GOOGLE_DRIVE_LATEST_VERSION_EXIT_CODE
    else
      getGoogleDriveLatestVersion
    fi;
  fi;

  checkGoogleDriveVersionToDownloadExists
  if [ $_DOWNLOAD_GOOGLE_DRIVE_URL_EXISTS -ne 1 ]; then
    let "_GET_GOOGLE_DRIVE_VERSION_404_ATTEMPTS++"
    let "_GET_GOOGLE_DRIVE_VERSION_INDEX++"
    getGoogleDriveLatestVersion
  else
    printf " (v$_GOOGLE_DRIVE_LASTEST_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}

function downloadGoogleDrive() {
  _DOWNLOAD_GOOGLE_DRIVE_URL="https://github.com/gdrive-org/gdrive/releases/download/$_GOOGLE_DRIVE_LASTEST_VERSION/gdrive-linux-x64"
  _DOWNLOAD_GOOGLE_DRIVE_OUTPUT=$(sudo curl -sL $_DOWNLOAD_GOOGLE_DRIVE_URL -o $1 2>&1)
  _DOWNLOAD_GOOGLE_DRIVE_EXIT_CODE=$?
  if  [ $_DOWNLOAD_GOOGLE_DRIVE_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error con la descarga de Google Drive v$_GOOGLE_DRIVE_LASTEST_VERSION\n" >&2
    printf "Url: $_DOWNLOAD_GOOGLE_DRIVE_URL\n" >&2
    printf "Error: $_DOWNLOAD_GOOGLE_DRIVE_OUTPUT\n" >&2
    exit $_DOWNLOAD_GOOGLE_DRIVE_EXIT_CODE
  fi;

  _GOOGLE_DRIVE_BINARY_CONTENT=$(sudo cat $1 | tr -d '\0')
  if [ "$_GOOGLE_DRIVE_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_GOOGLE_DRIVE_VERSION_404_ATTEMPTS -ge $_GET_GOOGLE_DRIVE_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f $1
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\nOcurrió un error con la descarga de Google Drive v$_GOOGLE_DRIVE_LASTEST_VERSION\n" >&2
      printf "Url: $_DOWNLOAD_GOOGLE_DRIVE_URL\n" >&2
      printf "Código de error: 404\n" >&2
      printf "Error: $_GOOGLE_DRIVE_BINARY_CONTENT\n" >&2
      exit 404
    else
      printf " (Not found) \e[91m\xE2\x9C\x95\e[39m\n"
      let "_GET_GOOGLE_DRIVE_VERSION_404_ATTEMPTS++"
      let "_GET_GOOGLE_DRIVE_VERSION_INDEX++"
      getGoogleDriveLatestVersion
      downloadGoogleDrive $1
    fi;
  fi;
  sudo chmod +x $1
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function main() {
  printPrependedStdout
  printf "Comprobando el cliente de Google Drive...\n"
  installScriptDependencies

  printPrependedStdout
  printf "  Obteniendo la última versión disponible..."
  getGoogleDriveLatestVersion

  # Comprobamos si está instalado
  _GOOGLE_DRIVE_FILEPATH=$(which gdrive)
  _GOOGLE_DRIVE_FILEPATH_EXIT_CODE=$?
  if [ $_GOOGLE_DRIVE_FILEPATH_EXIT_CODE -ne 0 ]; then
    _GOOGLE_DRIVE_FILEPATH=""
  fi;

  if [ "$_GOOGLE_DRIVE_FILEPATH" = "" ]; then
    # Si no está instalado
    printPrependedStdout
    printf "  Descargando cliente Google Drive (v$_GOOGLE_DRIVE_LASTEST_VERSION)..."
    downloadGoogleDrive /usr/bin/gdrive
  else
    _GOOGLE_DRIVE_VERSION_OUTPUT=$(gdrive version | head -n 1 | cut -d' ' -f2)
    _GOOGLE_DRIVE_VERSION_OUTPUT_EXIT_CODE=$?
    if [ $_GOOGLE_DRIVE_VERSION_OUTPUT_EXIT_CODE -ne 0 ]; then
      sudo rm -f $(which gdrive)
      printPrependedStdout
      printf "  Descargando cliente Google Drive (v$_GOOGLE_DRIVE_LASTEST_VERSION)..."
      downloadGoogleDrive /usr/bin/gdrive
    else
      _GOOGLE_DRIVE_INSTALLED_VERSION=$_GOOGLE_DRIVE_VERSION_OUTPUT
      printPrependedStdout
    	printf "  Encontrado Google Drive v$_GOOGLE_DRIVE_INSTALLED_VERSION instalado en el sistema"
      printf " \e[92m\xE2\x9C\x94\e[39m\n"

      # Si no está actualizado a la última versión
      if [ "$_GOOGLE_DRIVE_INSTALLED_VERSION" != "$_GOOGLE_DRIVE_LASTEST_VERSION" ]; then
        printPrependedStdout
        printf "  Actualizando Google Drive (v$_GOOGLE_DRIVE_INSTALLED_VERSION"
        printf " -> v$_GOOGLE_DRIVE_LASTEST_VERSION)..."
        sudo rm -f $_GOOGLE_DRIVE_FILEPATH
        downloadGoogleDrive $_GOOGLE_DRIVE_FILEPATH
      fi;
    fi;
  fi;

}
main
