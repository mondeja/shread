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

printPrependedStdout
printf "Comprobando Docker Compose...\n"

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

# Si suceden errrores 404 con las últimas versiones de Docker,
#   intentamos obtener las anteriores
_GET_DOCKER_COMPOSE_VERSION_INDEX=1
_GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS=0
_GET_DOCKER_COMPOSE_VERSION_404_MAX_ATTEMPTS=10
function checkDockerComposeVersionToDownloadExists() {
  _DOWNLOAD_DOCKER_COMPOSE_URL="https://github.com/docker/compose/releases/download/v$_DOCKER_COMPOSE_LASTEST_VERSION/docker-compose-$(uname -s)-$(uname -m)"
  _DOWNLOAD_DOCKER_COMPOSE_URL_EXISTS=0
  if curl --output /dev/null --silent --head --fail "$_DOWNLOAD_DOCKER_COMPOSE_URL"; then
    _DOWNLOAD_DOCKER_COMPOSE_URL_EXISTS=1
  fi;
}

_GET_DOCKER_COMPOSE_LATEST_VERSION_ATTEMPTS=0
_GET_DOCKER_COMPOSE_LATEST_VERSION_MAX_ATTEMPTS=5
_GET_DOCKER_COMPOSE_LATEST_VERSION_URL=https://api.github.com/repos/docker/compose/releases
function getDockerComposeLatestVersion() {
  _DOCKER_COMPOSE_RELEASES_INFO=$(curl -s $_GET_DOCKER_COMPOSE_LATEST_VERSION_URL 2>&1)
  _DOCKER_COMPOSE_RELEASES_INFO_MESSAGE=$(echo $_DOCKER_COMPOSE_RELEASES_INFO | jq -r '.message' 2>&1)
  _DOCKER_COMPOSE_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_DOCKER_COMPOSE_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la información de las releases de Docker" >&2
    printf " Compose de la API de Github.\nUrl: $_GET_DOCKER_COMPOSE_LATEST_VERSION_URL\n" >&2
    printf "Error: $_DOCKER_COMPOSE_RELEASES_INFO_MESSAGE\n" >&2
    exit $_DOCKER_COMPOSE_RELEASES_INFO_EXIT_CODE
  fi;

  # Obtenemos la penúltima release de Docker Compose
  #   El problema de obtener la última release es que,
  #   al momento de ser publicada, los binarios aún no
  #   están disponibles en el repositorio
  _PARSE_DOCKER_COMPOSE_LASTEST_VERSION=$(
    echo $_DOCKER_COMPOSE_RELEASES_INFO | \
    jq -r ".[$_GET_DOCKER_COMPOSE_VERSION_INDEX].name" 2>&1
  )
  _PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error parseando la penúltima versión de" >&2
    printf " las releases de Docker Compose de la API de Github.\n" >&2
    printf "Url: $_GET_DOCKER_COMPOSE_LATEST_VERSION_URL\n"
    printf "Código de error: $_PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE\n" >&2
    printf "Error: $_PARSE_DOCKER_COMPOSE_LASTEST_VERSION"
    exit $_PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE
  fi;

  _DOCKER_COMPOSE_LASTEST_VERSION=$(echo $_PARSE_DOCKER_COMPOSE_LASTEST_VERSION | cut -d'v' -f2 2>&1)
  _GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    let "_GET_DOCKER_COMPOSE_LATEST_VERSION_ATTEMPTS++"
    if [ $_GET_DOCKER_COMPOSE_LATEST_VERSION_ATTEMPTS -ge $_GET_DOCKER_COMPOSE_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\nOcurrió un error obteniendo la última versión de Docker Compose.\n" >&2
      printf "Url: $_GET_DOCKER_COMPOSE_LATEST_VERSION_URL\n" >&2
      printf "Código de error: $_GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE\n" >&2
      printf "Error: $_DOCKER_COMPOSE_LASTEST_VERSION"
      exit $_GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE
    else
      getDockerComposeLatestVersion
    fi;
  fi;

  checkDockerComposeVersionToDownloadExists
  if [ $_DOWNLOAD_DOCKER_COMPOSE_URL_EXISTS -ne 1 ]; then
    let "_GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS++"
    let "_GET_DOCKER_COMPOSE_VERSION_INDEX++"
    getDockerComposeLatestVersion
  else
    printf " (v$_DOCKER_COMPOSE_LASTEST_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}
printPrependedStdout
printf "  Obteniendo la última versión disponible..."
getDockerComposeLatestVersion

# Comprobamos si Docker Compose está instalado
_DOCKER_COMPOSE_FILEPATH=$(which docker-compose)
_DOCKER_COMPOSE_FILEPATH_EXIT_CODE=$?
if [ $_DOCKER_COMPOSE_FILEPATH_EXIT_CODE -ne 0 ]; then
  _DOCKER_COMPOSE_FILEPATH=""
fi;

function downloadDockerCompose() {
  _DOWNLOAD_DOCKER_COMPOSE_URL="https://github.com/docker/compose/releases/download/v$_DOCKER_COMPOSE_LASTEST_VERSION/docker-compose-$(uname -s)-$(uname -m)"
  _DOWNLOAD_DOCKER_COMPOSE_OUTPUT=$(sudo curl -sL $_DOWNLOAD_DOCKER_COMPOSE_URL -o $1 2>&1)
  _DOWNLOAD_DOCKER_COMPOSE_EXIT_CODE=$?
  if  [ $_DOWNLOAD_DOCKER_COMPOSE_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error con la descarga de Docker Compose v$_DOCKER_COMPOSE_LASTEST_VERSION\n" >&2
    printf "Url: $_DOWNLOAD_DOCKER_COMPOSE_URL\n" >&2
    printf "Error: $_DOWNLOAD_DOCKER_COMPOSE_OUTPUT\n" >&2
    exit $_DOWNLOAD_DOCKER_COMPOSE_EXIT_CODE
  fi;

  _DOCKER_COMPOSE_BINARY_CONTENT=$(sudo cat $1 | tr -d '\0')
  if [ "$_DOCKER_COMPOSE_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS -ge $_GET_DOCKER_COMPOSE_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f $1
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\nOcurrió un error con la descarga de Docker Compose v$_DOCKER_COMPOSE_LASTEST_VERSION\n" >&2
      printf "Url: $_DOWNLOAD_DOCKER_COMPOSE_URL\n" >&2
      printf "Código de error: 404\n" >&2
      printf "Error: $_DOCKER_COMPOSE_BINARY_CONTENT\n" >&2
      exit 404
    else
      printf " (Not found) \e[91m\xE2\x9C\x95\e[39m\n"
      let "_GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS++"
      let "_GET_DOCKER_COMPOSE_VERSION_INDEX++"
      getDockerComposeLatestVersion
      downloadDockerCompose $1
    fi;
  fi;
  sudo chmod +x $1
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

if [ "$_DOCKER_COMPOSE_FILEPATH" = "" ]; then
  # Si no está instalado
  printPrependedStdout
  printf "  Descargando Docker Compose (v$_DOCKER_COMPOSE_LASTEST_VERSION)..."
  downloadDockerCompose /usr/local/bin/docker-compose
else
  # Pero si ya está instalado
  _DOCKER_COMPOSE_VERSION_OUTPUT=$(docker-compose --version)
  _DOCKER_COMPOSE_VERSION_OUTPUT_EXIT_CODE=$?
  if [ $_DOCKER_COMPOSE_VERSION_OUTPUT_EXIT_CODE -ne 0 ]; then
    sudo rm -f $(which docker-compose)
    printPrependedStdout
    printf "  Descargando Docker Compose (v$_DOCKER_COMPOSE_LASTEST_VERSION)..."
    downloadDockerCompose /usr/local/bin/docker-compose
  else
    _DOCKER_COMPOSE_INSTALLED_VERSION=$(echo $_DOCKER_COMPOSE_VERSION_OUTPUT | cut -c24-29)
    printPrependedStdout
  	printf "  Encontrado Docker Compose v$_DOCKER_COMPOSE_INSTALLED_VERSION instalado en el sistema"

    printf " \e[92m\xE2\x9C\x94\e[39m\n"

    # Si no está actualizado a la última versión
    if [ "$_DOCKER_COMPOSE_INSTALLED_VERSION" != "$_DOCKER_COMPOSE_LASTEST_VERSION" ]; then
      printPrependedStdout
      printf "  Actualizando Docker Compose (v$_DOCKER_COMPOSE_INSTALLED_VERSION"
      printf " -> v$_DOCKER_COMPOSE_LASTEST_VERSION)..."
      sudo rm -f $_DOCKER_COMPOSE_FILEPATH
      downloadDockerCompose $_DOCKER_COMPOSE_FILEPATH
    fi;
  fi;
fi;
