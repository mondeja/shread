#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_CHECKING_PANDOC="Checking Pandoc..."
_MSG_ERROR_RETRIEVING_PANDOC_RELEASES="An error happen retrieving information for Pandoc releases from Github API."
_MSG_URL="URL"
_MSG_ERROR="Error"
_MSG_ERROR_CODE="Error code"
_MSG_RETRIEVING_LASTEST_AVAILABLE_VERSION="Retrieving lastest available Pandoc version..."
_MSG_DOWNLOADING_PACKAGE="Downloading package..."
_MSG_ERROR_RETRIEVING_LASTEST_PANDOC_VERSION="An error happen retrieving lastest Pandoc version."
_MSG_ERROR_DOWNLOADING_PANDOC="An error happen downloading Pandoc"
_MSG_NOT_FOUND="Not found"
_MSG_INSTALLING="Installing..."
_MSG_PANDOC_FOUND_INSTALLED="Pandoc found installed in the system"
_MSG_UPDATING_PANDOC="Updating Pandoc"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

INDENT_STRING=""

GITHUB_API_CURL_AUTH=""
if [ -n "$GITHUB_USERNAME" ] && [ -n "$GITHUB_TOKEN" ]; then
  GITHUB_API_CURL_AUTH="$GITHUB_USERNAME:$GITHUB_TOKEN"
fi;

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

printIndent
printf "%s\n" "$_MSG_CHECKING_PANDOC"

if [ "$(command -v pacman)" = "" ]; then
  if [ -z "$_SCRIPT_FILENAME" ]; then
    filepath="src/unix/_/download/pacapt/main.sh"
    bash "$filepath" > /dev/null
  else
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
fi;

INSTALLATION_DEPENDENCIES=(
  "jq"
)
for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo pacman -S "$DEP" > /dev/null || exit $?
  fi;
done;

_GET_PANDOC_VERSION_INDEX=0
_GET_PANDOC_VERSION_404_ATTEMPTS=0
_GET_PANDOC_VERSION_404_MAX_ATTEMPTS=10
function checkPandocVersionToDownloadExists() {
  _DOWNLOAD_PANDOC_URL="https://github.com/jgm/pandoc/releases/download/$_PANDOC_LASTEST_VERSION/pandoc-$_PANDOC_LASTEST_VERSION-1-amd64.deb"
  _DOWNLOAD_PANDOC_URL_EXISTS=0
  if curl --output /dev/null --silent --head --fail "$_DOWNLOAD_PANDOC_URL"; then
    _DOWNLOAD_PANDOC_URL_EXISTS=1
  fi;
}

_GET_PANDOC_LATEST_VERSION_ATTEMPTS=0
_GET_PANDOC_LATEST_VERSION_MAX_ATTEMPTS=5
_GET_PANDOC_LATEST_VERSION_URL="https://api.github.com/repos/jgm/pandoc/releases"
function getPandocLatestVersion() {
  _PANDOC_RELEASES_INFO="$(curl -sL "$GITHUB_API_CURL_AUTH" "$_GET_PANDOC_LATEST_VERSION_URL" 2>&1)"
  _PANDOC_RELEASES_INFO_MESSAGE="$(echo "$_PANDOC_RELEASES_INFO" | jq -r '.message' 2>&1)"
  _PANDOC_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_PANDOC_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_RETRIEVING_PANDOC_RELEASES" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_PANDOC_LATEST_VERSION_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_PANDOC_RELEASES_INFO_MESSAGE" >&2
    exit $_PANDOC_RELEASES_INFO_MESSAGE_EXIT_CODE
  fi;

  # Obtenemos la penúltima release de Pandoc
  #   El problema de obtener la última release es que,
  #   al momento de ser publicada, los binarios aún no
  #   están disponibles en el repositorio
  _PANDOC_LASTEST_VERSION=$(
    echo "$_PANDOC_RELEASES_INFO" | \
    jq -r ".[$_GET_PANDOC_VERSION_INDEX].tag_name" 2>&1
  )
  _GET_PANDOC_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_PANDOC_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    (( _GET_PANDOC_LATEST_VERSION_ATTEMPTS++ ))
    if [ $_GET_PANDOC_LATEST_VERSION_ATTEMPTS -ge $_GET_PANDOC_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\n%s\n" "$_MSG_ERROR_RETRIEVING_LASTEST_PANDOC_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_GET_PANDOC_LATEST_VERSION_URL" >&2
      printf "%s: %s\n" "$_MSG_ERROR_CODE" "$_GET_PANDOC_LATEST_VERSION_EXIT_CODE" >&2
      printf "%s: %s" "$_MSG_ERROR" "$_PANDOC_LASTEST_VERSION" >&2
      exit $_GET_PANDOC_LATEST_VERSION_EXIT_CODE
    else
      getPandocLatestVersion
    fi;
  fi;

  checkPandocVersionToDownloadExists
  if [ $_DOWNLOAD_PANDOC_URL_EXISTS -ne 1 ]; then
    (( _GET_PANDOC_VERSION_404_ATTEMPTS++ ))
    (( _GET_PANDOC_VERSION_INDEX++ ))
    getPandocLatestVersion
  else
    printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$_PANDOC_LASTEST_VERSION"
  fi;
}

printIndent
printf "  %s" "$_MSG_RETRIEVING_LASTEST_AVAILABLE_VERSION"
getPandocLatestVersion

# Comprobamos si Pandoc está instalado
_PANDOC_FILEPATH="$(command -v pandoc)"
_PANDOC_FILEPATH_EXIT_CODE=$?
if [ $_PANDOC_FILEPATH_EXIT_CODE -ne 0 ]; then
  _PANDOC_FILEPATH=""
fi;

function downloadPandoc() {
  printIndent
  printf "  %s" "$_MSG_DOWNLOADING_PACKAGE"
  _DOWNLOAD_PANDOC_URL="https://github.com/jgm/pandoc/releases/download/$_PANDOC_LASTEST_VERSION/pandoc-$_PANDOC_LASTEST_VERSION-1-amd64.deb"
  _DOWNLOAD_PANDOC_OUTPUT="$(sudo curl -sL "$_DOWNLOAD_PANDOC_URL" -o "$1" 2>&1)"
  _DOWNLOAD_PANDOC_EXIT_CODE=$?
  if  [ $_DOWNLOAD_PANDOC_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s (v%s)\n" "$_MSG_ERROR_DOWNLOADING_PANDOC" "$_PANDOC_LASTEST_VERSION" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_PANDOC_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_DOWNLOAD_PANDOC_OUTPUT" >&2
    exit $_DOWNLOAD_PANDOC_EXIT_CODE
  fi;

  _PANDOC_BINARY_CONTENT="$(sudo cat "$1" | tr -d '\0')"
  if [ "$_PANDOC_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_PANDOC_VERSION_404_ATTEMPTS -ge $_GET_PANDOC_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f "$1"
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s (v%s)\n" "$_MSG_ERROR_DOWNLOADING_PANDOC" "$_PANDOC_LASTEST_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_PANDOC_URL" >&2
      printf "%s: 404\n" "$_MSG_ERROR_CODE" >&2
      printf "%s: %s\n" "$_MSG_ERROR" "$_PANDOC_BINARY_CONTENT" >&2
      exit 1
    else
      printf " (%s) \e[91m\xE2\x9C\x95\e[39m\n" "$_MSG_NOT_FOUND"
      (( _GET_PANDOC_VERSION_404_ATTEMPTS++ ))
      (( _GET_PANDOC_VERSION_INDEX++ ))
      getPandocLatestVersion
      downloadPandoc "$1"
    fi;
  fi;
  sudo chmod +x "$1"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function installPandoc() {
  printIndent
  printf "  %s" "$_MSG_INSTALLING"
  sudo dpkg -i "$1" > /dev/null || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
  rm -f "$1"
}

if [ "$_PANDOC_FILEPATH" = "" ]; then
  # Si no está instalado
  downloadPandoc ~/pandoc.deb
  installPandoc ~/pandoc.deb
else
  # Pero si ya está instalado
  _PANDOC_VERSION_OUTPUT="$(pandoc --version | head -n 1 | cut -d' ' -f2)"
  _PANDOC_VERSION_OUTPUT_EXIT_CODE=$?
  if [ $_PANDOC_VERSION_OUTPUT_EXIT_CODE -ne 0 ]; then
    sudo rm -f "$(command -v pandoc)"
    downloadPandoc ~/pandoc.deb
    installPandoc ~/pandoc.deb
  else
    printIndent
  	printf "  %s (v%s)" "$_MSG_PANDOC_FOUND_INSTALLED" "$_PANDOC_VERSION_OUTPUT"

    # Si no está actualizado a la última versión
    if [ "$_PANDOC_VERSION_OUTPUT" != "$_PANDOC_LASTEST_VERSION" ]; then
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
      printIndent
      printf "  %s (v%s" "$_MSG_UPDATING_PANDOC" "$_PANDOC_VERSION_OUTPUT"
      printf " -> v%s)...\n" "$_PANDOC_LASTEST_VERSION"
      INDENT_STRING="  $INDENT_STRING"
      sudo rm -f $_PANDOC_FILEPATH
      downloadPandoc ~/pandoc.deb
      installPandoc ~/pandoc.deb
    else
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
    fi;
  fi;
fi;
