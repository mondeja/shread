#!/bin/bash

_MSG_URL="URL"
_MSG_ERROR="Error"
_MSG_ERROR_CODE="Error code"
_MSG_ERROR_RETRIEVING_SHUNIT_RELEASES_INFO="An error happen retrieving shunit2 releases information from Github API."
_MSG_CHECKING_SHUNIT="Checking shunit2..."
_MSG_SHUNIT_NOT_FOUND_IN_PATH="Binary not found in PATH"
_MSG_RETRIEVING_SHUNIT_LASTEST_VERSION="Retrieving lastest version..."
_MSG_ERROR_PARSING_LASTEST_SHUNIT_RELEASE="An error happen parsing lastest shunit2 release version from Github API."
_MSG_DOWNLOADING_SHUNIT="Downloading shunit2"
_MSG_ERROR_DOWNLOADING_SHUNIT="An error happen downloading shunit2"
_MSG_UNZIPPING_SHUNIT="Unzipping..."
_MSG_DEST_EXISTS="Destination file exists"
_MSG_INDICATE_ANOTHER_DEST_WITH_PARAM="Indicate another destination for shunit2 with parameter"

_PREPEND_STDOUT_STRING=""
_DEST_PATH="$PWD/shunit2"

for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
        shift
        ;;

        --dest-path)
        shift
        _DEST_PATH=$1
        shift
        ;;
    esac
done

_DEST_DIRPATH="$(dirname $_DEST_PATH)"

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

INSTALLATION_DEPENDENCIES=(
  "curl"
  "jq"
)

for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(sudo dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
  fi;
done;


_GET_SHUNIT_RELEASES_URL=https://api.github.com/repos/kward/shunit2/releases
function getShunitLastestVersion() {
  _SHUNIT_RELEASES_INFO=$(curl -sL $_GET_SHUNIT_RELEASES_URL 2>&1)
  _SHUNIT_RELEASES_INFO_MESSAGE=$(echo $_SHUNIT_RELEASES_INFO | jq -r '.message' 2>&1)
  _SHUNIT_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_SHUNIT_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n$_MSG_ERROR_RETRIEVING_SHUNIT_RELEASES_INFO\n" >&2
    printf "$_MSG_URL: $_GET_SHUNIT_RELEASES_URL\n" >&2
    printf "$_MSG_ERROR: $_SHUNIT_RELEASES_INFO_MESSAGE\n" >&2
    exit $_SHUNIT_RELEASES_INFO_MESSAGE_EXIT_CODE
  fi;

  _PARSE_SHUNIT_LASTEST_VERSION=$(
    echo $_SHUNIT_RELEASES_INFO | \
    jq -r ".[0].name" 2>&1
  )
  _PARSE_SHUNIT_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_SHUNIT_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n$_MSG_ERROR_PARSING_LASTEST_SHUNIT_RELEASE\n" >&2
    printf "$_MSG_URL: $_GET_SHUNIT_LATEST_VERSION_URL\n"
    printf "$_MSG_ERROR_CODE: $_PARSE_SHUNIT_LASTEST_VERSION_EXIT_CODE\n" >&2
    printf "$_MSG_ERROR: $_PARSE_SHUNIT_LASTEST_VERSION"
    exit $_PARSE_SHUNIT_LASTEST_VERSION_EXIT_CODE
  fi;

  _SHUNIT_LASTEST_VERSION=$(printf "$_PARSE_SHUNIT_LASTEST_VERSION" | cut -d' ' -f2)
}

function downloadShunit() {
  _DOWNLOAD_SHUNIT_URL="https://github.com/kward/shunit2/archive/v$1.tar.gz"

  _DOWNLOAD_SHUNIT_OUTPUT=$(curl -sL $_DOWNLOAD_SHUNIT_URL -o $2 2>&1)
  _DOWNLOAD_SHUNIT_EXIT_CODE=$?
  if  [ $_DOWNLOAD_SHUNIT_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n$_MSG_ERROR_DOWNLOADING_SHUNIT v$_SHUNIT_LASTEST_VERSION\n" >&2
    printf "$_MSG_URL: $_DOWNLOAD_SHUNIT_URL\n" >&2
    printf "$_MSG_ERROR: $_DOWNLOAD_SHUNIT_OUTPUT\n" >&2
    exit $_DOWNLOAD_SHUNIT_EXIT_CODE
  fi;
}

function main() {
  # Check if destination file exists yet
  if [ -f "$_DEST_PATH" ] || [ -d "$_DEST_PATH" ]; then
    printf "$_MSG_DEST_EXISTS ($_DEST_PATH)\n" >&2
    printf "$_MSG_INDICATE_ANOTHER_DEST_WITH_PARAM '--dest-path'.\n" >&2
    exit 1
  fi;

  printPrependedStdout
  printf "$_MSG_CHECKING_SHUNIT\n"

  printPrependedStdout
  printf "  $_MSG_RETRIEVING_SHUNIT_LASTEST_VERSION"
  getShunitLastestVersion
  printf " (v$_SHUNIT_LASTEST_VERSION)"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  $_MSG_DOWNLOADING_SHUNIT (v$_SHUNIT_LASTEST_VERSION)"
  downloadShunit "$_SHUNIT_LASTEST_VERSION" "$_DEST_DIRPATH/shunit2.tar.gz"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  $_MSG_UNZIPPING_SHUNIT"
  tar xzf "$_DEST_DIRPATH/shunit2.tar.gz" -C "$_DEST_DIRPATH" || exit $?
  mv "$_DEST_DIRPATH/shunit2-$_SHUNIT_LASTEST_VERSION/shunit2" "$_DEST_PATH"
  rm -rf "$_DEST_DIRPATH/shunit2-$_SHUNIT_LASTEST_VERSION"
  rm -f "$_DEST_DIRPATH/shunit2.tar.gz"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

if [ -z "$SHREAD_TEST" ]; then
  main
fi;
