#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_URL="URL"
_MSG_ERROR="Error"
_MSG_ERROR_CODE="Error code"
_MSG_NOT_FOUND="Not found"
_MSG_ERROR_RETRIEVING_DOCKER_COMPOSE_RELEASES="An error happen retrieving Docker Compose releases info from Github API."
_MSG_ERROR_PARSING_PENULTIMATE_DOCKER_COMPOSE_RELEASES_VERSION="An error happen parsing the penultimate Docker Compose releases version from Github API."
_MSG_ERROR_RETRIEVING_LAST_DOCKER_COMPOSE_VERSION="An error happen retrieving last Docker Compose version from Github API."
_MSG_ERROR_RETRIEVING_LAST_AVAILABLE_VERSION="Retrieving last available version..."
_MSG_ERROR_DOWNLOADING_DOCKER_COMPOSE="An error happen downloading Docker Compose"
_MSG_DOWNLOADING_DOCKER_COMPOSE="Downloading Docker Compose"
_MSG_DOCKER_COMPOSE_FOUND_INSTALLED="Docker Compose found installed in the system"
_MSG_UPDATING_DOCKER_COMPOSE="Updating Docker Compose"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s" "$_MSG_EXECUTED_AS_SUPERUSER\n" >&2
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
for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(sudo dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
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
_GET_DOCKER_COMPOSE_LATEST_VERSION_URL="https://api.github.com/repos/docker/compose/releases"
function getDockerComposeLatestVersion() {
  _DOCKER_COMPOSE_RELEASES_INFO="$(curl -s "$_GET_DOCKER_COMPOSE_LATEST_VERSION_URL" 2>&1)"
  _DOCKER_COMPOSE_RELEASES_INFO_MESSAGE="$(echo "$_DOCKER_COMPOSE_RELEASES_INFO" | jq -r '.message' 2>&1)"
  _DOCKER_COMPOSE_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_DOCKER_COMPOSE_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_RETRIEVING_DOCKER_COMPOSE_RELEASES" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_DOCKER_COMPOSE_LATEST_VERSION_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_DOCKER_COMPOSE_RELEASES_INFO_MESSAGE" >&2
    exit "$_DOCKER_COMPOSE_RELEASES_INFO_EXIT_CODE"
  fi;

  # Obtenemos la penúltima release de Docker Compose
  #   El problema de obtener la última release es que,
  #   al momento de ser publicada, los binarios aún no
  #   están disponibles en el repositorio
  _PARSE_DOCKER_COMPOSE_LASTEST_VERSION=$(
    echo "$_DOCKER_COMPOSE_RELEASES_INFO" | \
    jq -r ".[$_GET_DOCKER_COMPOSE_VERSION_INDEX].name" 2>&1
  )
  _PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_PARSING_PENULTIMATE_DOCKER_COMPOSE_RELEASES_VERSION" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_DOCKER_COMPOSE_LATEST_VERSION_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR_CODE" "$_PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE" >&2
    printf "%s: %s" "$_MSG_ERROR" "$_PARSE_DOCKER_COMPOSE_LASTEST_VERSION" >&2
    exit "$_PARSE_DOCKER_COMPOSE_LASTEST_VERSION_EXIT_CODE"
  fi;

  _DOCKER_COMPOSE_LASTEST_VERSION="$(echo "$_PARSE_DOCKER_COMPOSE_LASTEST_VERSION" | cut -d'v' -f2 2>&1)"
  _GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    (( _GET_DOCKER_COMPOSE_LATEST_VERSION_ATTEMPTS++ ))
    if [ $_GET_DOCKER_COMPOSE_LATEST_VERSION_ATTEMPTS -ge $_GET_DOCKER_COMPOSE_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\n%s\n" "$_MSG_ERROR_RETRIEVING_LAST_DOCKER_COMPOSE_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_GET_DOCKER_COMPOSE_LATEST_VERSION_URL" >&2
      printf "%s: %s\n" "$_MSG_ERROR_CODE" "$_GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE" >&2
      printf "%s: %s" "$_MSG_ERROR" "$_DOCKER_COMPOSE_LASTEST_VERSION" >&2
      exit "$_GET_DOCKER_COMPOSE_LATEST_VERSION_EXIT_CODE"
    else
      getDockerComposeLatestVersion
    fi;
  fi;

  checkDockerComposeVersionToDownloadExists
  if [ $_DOWNLOAD_DOCKER_COMPOSE_URL_EXISTS -ne 1 ]; then
    (( _GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS++ ))
    (( _GET_DOCKER_COMPOSE_VERSION_INDEX++ ))
    getDockerComposeLatestVersion
  else
    printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$_DOCKER_COMPOSE_LASTEST_VERSION"
  fi;
}
printPrependedStdout
printf "  %s" "$_MSG_ERROR_RETRIEVING_LAST_AVAILABLE_VERSION"
getDockerComposeLatestVersion

# Comprobamos si Docker Compose está instalado
_DOCKER_COMPOSE_FILEPATH="$(command -v docker-compose)"
_DOCKER_COMPOSE_FILEPATH_EXIT_CODE=$?
if [ $_DOCKER_COMPOSE_FILEPATH_EXIT_CODE -ne 0 ]; then
  _DOCKER_COMPOSE_FILEPATH=""
fi;

function downloadDockerCompose() {
  _DOWNLOAD_DOCKER_COMPOSE_URL="https://github.com/docker/compose/releases/download/v$_DOCKER_COMPOSE_LASTEST_VERSION/docker-compose-$(uname -s)-$(uname -m)"
  _DOWNLOAD_DOCKER_COMPOSE_OUTPUT="$(sudo curl -sL "$_DOWNLOAD_DOCKER_COMPOSE_URL" -o "$1" 2>&1)"
  _DOWNLOAD_DOCKER_COMPOSE_EXIT_CODE=$?
  if  [ $_DOWNLOAD_DOCKER_COMPOSE_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s (v%s)\n" "$_MSG_ERROR_DOWNLOADING_DOCKER_COMPOSE" "$_DOCKER_COMPOSE_LASTEST_VERSION" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_DOCKER_COMPOSE_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_DOWNLOAD_DOCKER_COMPOSE_OUTPUT" >&2
    exit $_DOWNLOAD_DOCKER_COMPOSE_EXIT_CODE
  fi;

  _DOCKER_COMPOSE_BINARY_CONTENT=$(sudo cat "$1" | tr -d '\0')
  if [ "$_DOCKER_COMPOSE_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS -ge $_GET_DOCKER_COMPOSE_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f "$1"
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s (v%s)\n" "$_MSG_ERROR_DOWNLOADING_DOCKER_COMPOSE" "$_DOCKER_COMPOSE_LASTEST_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_DOCKER_COMPOSE_URL" >&2
      printf "%s: 404\n" "$_MSG_ERROR_CODE" >&2
      printf "%s: %s\n" "$_MSG_ERROR" "$_DOCKER_COMPOSE_BINARY_CONTENT" >&2
      exit 1
    else
      printf " (%s) \e[91m\xE2\x9C\x95\e[39m\n" "$_MSG_NOT_FOUND"
      (( _GET_DOCKER_COMPOSE_VERSION_404_ATTEMPTS++ ))
      (( _GET_DOCKER_COMPOSE_VERSION_INDEX++ ))
      getDockerComposeLatestVersion
      downloadDockerCompose "$1"
    fi;
  fi;
  sudo chmod +x "$1"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

if [ "$_DOCKER_COMPOSE_FILEPATH" = "" ]; then
  # Si no está instalado
  printPrependedStdout
  printf "  %s (v%s)..." "$_MSG_DOWNLOADING_DOCKER_COMPOSE" "$_DOCKER_COMPOSE_LASTEST_VERSION"
  downloadDockerCompose /usr/local/bin/docker-compose
else
  # Pero si ya está instalado
  _DOCKER_COMPOSE_VERSION_OUTPUT="$(docker-compose --version)"
  _DOCKER_COMPOSE_VERSION_OUTPUT_EXIT_CODE=$?
  if [ $_DOCKER_COMPOSE_VERSION_OUTPUT_EXIT_CODE -ne 0 ]; then
    sudo rm -f "$(command -v docker-compose)"
    printPrependedStdout
    printf "  %s (v%s)..." "$_MSG_DOWNLOADING_DOCKER_COMPOSE" "$_DOCKER_COMPOSE_LASTEST_VERSION"
    downloadDockerCompose /usr/local/bin/docker-compose
  else
    _DOCKER_COMPOSE_INSTALLED_VERSION="$(echo "$_DOCKER_COMPOSE_VERSION_OUTPUT" | cut -c24-29)"
    printPrependedStdout
    printf "  %s (v%s)" "$_MSG_DOCKER_COMPOSE_FOUND_INSTALLED" "$_DOCKER_COMPOSE_INSTALLED_VERSION"

    printf " \e[92m\xE2\x9C\x94\e[39m\n"

    # Si no está actualizado a la última versión
    if [ "$_DOCKER_COMPOSE_INSTALLED_VERSION" != "$_DOCKER_COMPOSE_LASTEST_VERSION" ]; then
      printPrependedStdout
      printf "  %s (v%s" "$_MSG_UPDATING_DOCKER_COMPOSE" "$_DOCKER_COMPOSE_INSTALLED_VERSION"
      printf " -> v%s)..." "$_DOCKER_COMPOSE_LASTEST_VERSION"
      sudo rm -f $_DOCKER_COMPOSE_FILEPATH
      downloadDockerCompose $_DOCKER_COMPOSE_FILEPATH
    fi;
  fi;
fi;
