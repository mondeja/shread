#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_ERROR_RETRIEVING_BOOSTNOTE_RELEASES_INFO="An error happen retrieving Boostnote releases info from Github API."
_MSG_URL="URL"
_MSG_ERROR="Error"
_MSG_ERROR_CODE="Error code"
_MSG_NOT_FOUND="Not found"
_MSG_ERROR_PARSING_PENULTIMATE_BOOSTNOTE_RELEASE="An error happen parsing penultimate Boostnote release from Github API."
_MSG_ERROR_RETRIEVING_LAST_BOOSTNOTE_VERSION="An error happen retrieving last Boostnote version."
_MSG_ERROR_DOWNLOADING_BOOSTNOTE="An error happen downloading Boostnote"
_MSG_CHECKING_BOOSTNOTE="Checking Boostnote..."
_MSG_RETRIEVING_LAST_AVAILABLE_VERSION="Retrieving last available version..."
_MSG_DOWNLOADING_BOOSTNOTE="Downloading Boostnote"
_MSG_INSTALLING_BOOSTNOTE="Installing Boostnote"
_MSG_BOOSTNOTE_FOUND_INSTALLED="Boostnote found installed on the system"
_MSG_UPDATING_BOOSTNOTE="Updating Boostnote"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

# We need to update or not? (not by default, until
#   Boostnote doesn't reach 1.0.0 version)
_UPDATE=0

GITHUB_API_CURL_AUTH=""
if [ -n "$GITHUB_USERNAME" ] && [ -n "$GITHUB_TOKEN" ]; then
  GITHUB_API_CURL_AUTH="$GITHUB_USERNAME:$GITHUB_TOKEN"
fi;

for arg in "$@"; do
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

INSTALLATION_DEPENDENCIES=(
  "curl"
  "jq"
)

for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
  fi;
done;

ARCH=""
case $(uname -m) in
    i386)   ARCH="386" ;;
    i686)   ARCH="386" ;;
    x86_64) ARCH="amd64" ;;
    arm)    dpkg --print-architecture | grep -q "arm64" && ARCH="arm64" || ARCH="arm" ;;
esac

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
_GET_BOOSTNOTE_LATEST_VERSION_URL="https://api.github.com/repos/BoostIO/boost-releases/releases"
function getBoostnoteLatestVersion() {
  _BOOSTNOTE_RELEASES_INFO="$(curl -sL "$GITHUB_API_CURL_AUTH" "$_GET_BOOSTNOTE_LATEST_VERSION_URL" 2>&1)"
  _BOOSTNOTE_RELEASES_INFO_MESSAGE="$(echo "$_BOOSTNOTE_RELEASES_INFO" | jq -r '.message' 2>&1)"
  _BOOSTNOTE_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_BOOSTNOTE_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_RETRIEVING_BOOSTNOTE_RELEASES_INFO" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_BOOSTNOTE_LATEST_VERSION_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_BOOSTNOTE_RELEASES_INFO_MESSAGE" >&2
    exit $_BOOSTNOTE_RELEASES_INFO_MESSAGE_EXIT_CODE
  fi;

  # Obtenemos la penúltima release de Boostnote
  #   El problema de obtener la última release es que,
  #   al momento de ser publicada, los binarios aún no
  #   están disponibles en el repositorio
  _PARSE_BOOSTNOTE_LASTEST_VERSION=$(
    echo "$_BOOSTNOTE_RELEASES_INFO" | \
    jq -r ".[$_GET_BOOSTNOTE_VERSION_INDEX].name" 2>&1
  )
  _PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_PARSING_PENULTIMATE_BOOSTNOTE_RELEASE" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_BOOSTNOTE_LATEST_VERSION_URL" >&2
    printf "%s: %d\n" "$_MSG_ERROR_CODE" "$_PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE" >&2
    printf "%s: %s" "$_MSG_ERROR" "$_PARSE_BOOSTNOTE_LASTEST_VERSION" >&2
    exit $_PARSE_BOOSTNOTE_LASTEST_VERSION_EXIT_CODE
  fi;

  _BOOSTNOTE_LASTEST_VERSION="$(echo "$_PARSE_BOOSTNOTE_LASTEST_VERSION" | cut -d'v' -f2 2>&1)"
  _GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    (( _GET_BOOSTNOTE_LATEST_VERSION_ATTEMPTS++ ))
    if [ $_GET_BOOSTNOTE_LATEST_VERSION_ATTEMPTS -ge $_GET_BOOSTNOTE_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\n%s\n" "$_MSG_ERROR_RETRIEVING_LAST_BOOSTNOTE_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_GET_BOOSTNOTE_LATEST_VERSION_URL" >&2
      printf "%s: %s\n" "$_MSG_ERROR_CODE" "$_GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE" >&2
      printf "%s: %s" "$_MSG_ERROR" "$_BOOSTNOTE_LASTEST_VERSION" >&2
      exit $_GET_BOOSTNOTE_LATEST_VERSION_EXIT_CODE
    else
      getBoostnoteLatestVersion
    fi;
  fi;

  checkBoostnoteVersionToDownloadExists
  if [ $_DOWNLOAD_BOOSTNOTE_URL_EXISTS -ne 1 ]; then
    (( _GET_BOOSTNOTE_VERSION_404_ATTEMPTS++ ))
    (( _GET_BOOSTNOTE_VERSION_INDEX++ ))
    getBoostnoteLatestVersion
  else
    printf " (v%s)" "$_BOOSTNOTE_LASTEST_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}

function downloadBoostnote() {
  printPrependedStdout
  _DOWNLOAD_BOOSTNOTE_URL="https://github.com/BoostIO/boost-releases/releases/download/v$_BOOSTNOTE_LASTEST_VERSION/boostnote_${_BOOSTNOTE_LASTEST_VERSION}_$ARCH.deb"
  _DOWNLOAD_BOOSTNOTE_OUTPUT="$(sudo curl -sL "$_DOWNLOAD_BOOSTNOTE_URL" -o "$1" 2>&1)"
  _DOWNLOAD_BOOSTNOTE_EXIT_CODE=$?
  if  [ $_DOWNLOAD_BOOSTNOTE_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s v%s\n" "$_MSG_ERROR_DOWNLOADING_BOOSTNOTE" "$_BOOSTNOTE_LASTEST_VERSION" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_BOOSTNOTE_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_DOWNLOAD_BOOSTNOTE_OUTPUT" >&2
    exit $_DOWNLOAD_BOOSTNOTE_EXIT_CODE
  fi;

  _BOOSTNOTE_BINARY_CONTENT="$(sudo cat "$1" | tr -d '\0')"
  if [ "$_BOOSTNOTE_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_BOOSTNOTE_VERSION_404_ATTEMPTS -ge $_GET_BOOSTNOTE_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f "$1"
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s v%s\n" "$_MSG_ERROR_DOWNLOADING_BOOSTNOTE" "$_BOOSTNOTE_LASTEST_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_BOOSTNOTE_URL" >&2
      printf "%s: 404\n" "$_MSG_ERROR_CODE" >&2
      printf "%s: %s\n" "$_MSG_ERROR" "$_BOOSTNOTE_BINARY_CONTENT" >&2
      exit 1
    else
      printf " (%s) \e[91m\xE2\x9C\x95\e[39m\n" "$_MSG_NOT_FOUND"
      (( _GET_BOOSTNOTE_VERSION_404_ATTEMPTS++ ))
      (( _GET_BOOSTNOTE_VERSION_INDEX++ ))
      getBoostnoteLatestVersion
      downloadBoostnote "$1"
    fi;
  fi;
}

function installBoostnote() {
  sudo dpkg -i "$1" > /dev/null
  sudo rm -f "$1"
}

printPrependedStdout
printf "%s\n" "$_MSG_CHECKING_BOOSTNOTE"

INSTALLATION_DEPENDENCIES=(
  "curl"
  "jq"
)
for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(sudo dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
  fi;
done

# Comprobamos si Boostnote está instalado
if ! _BOOSTNOTE_BINARY_PATH="$(command -v boostnote)"; then
  _BOOSTNOTE_BINARY_PATH=""
fi;

_BOOSTNOTE_PACKAGE_JSON_FILEPATH="/lib/boostnote/resources/app/package.json"
if [ ! -f "$_BOOSTNOTE_PACKAGE_JSON_FILEPATH" ]; then
  _BOOSTNOTE_PACKAGE_JSON_FILEPATH="/usr/lib/boostnote/resources/app/package.json"
fi;

if [ "$_BOOSTNOTE_BINARY_PATH" = "" ] || [ ! -f "$_BOOSTNOTE_PACKAGE_JSON_FILEPATH" ]; then
  # Si no está instalado
  printPrependedStdout
  printf "  %s" "$_MSG_RETRIEVING_LAST_AVAILABLE_VERSION"
  getBoostnoteLatestVersion

  printPrependedStdout
  printf "  %s (v%s)..." "$_MSG_DOWNLOADING_BOOSTNOTE" "${_BOOSTNOTE_LASTEST_VERSION}"
  downloadBoostnote "/tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
  printPrependedStdout
  printf "  %s (v%s)..." "$_MSG_INSTALLING_BOOSTNOTE" "$_BOOSTNOTE_LASTEST_VERSION"
  installBoostnote "/tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  # Pero si ya está instalado
  _BOOSTNOTE_INSTALLED_VERSION=$(
    sudo cat "$_BOOSTNOTE_PACKAGE_JSON_FILEPATH" | \
    grep '"version": ' | \
    cut -d'"' -f4
  )
  printPrependedStdout
	printf "  %s (v%s)" "$_MSG_BOOSTNOTE_FOUND_INSTALLED" "$_BOOSTNOTE_INSTALLED_VERSION"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
  # Si no está actualizado a la última versión
  if [ "$_BOOSTNOTE_INSTALLED_VERSION" != "$_BOOSTNOTE_LASTEST_VERSION" ]; then
    if [ $_UPDATE -eq 1 ]; then
      printPrependedStdout
      printf "  %s" "$_MSG_RETRIEVING_LAST_AVAILABLE_VERSION"
      getBoostnoteLatestVersion

      printPrependedStdout
      printf "  %s (v%s" "$_MSG_UPDATING_BOOSTNOTE" "$_BOOSTNOTE_INSTALLED_VERSION"
      printf " -> v%s)..." "$_BOOSTNOTE_LASTEST_VERSION"
      sudo rm -f "$_BOOSTNOTE_BINARY_PATH"
      downloadBoostnote "/tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb"
      installBoostnote "/tmp/boostnote_${_BOOSTNOTE_LASTEST_VERSION}.deb"
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
    fi;
  fi;
fi;
