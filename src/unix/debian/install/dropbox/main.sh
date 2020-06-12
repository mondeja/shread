#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_CHECKING_DROPBOX_ENV="Checking Dropbox environment..."
_MSG_DROPBOX_FOUND_INSTALLED="Dropbox found installed in the system"
_MSG_CHECKING_IF_IS_UPDATED="Checking if is updated..."
_MSG_UPDATING_DROPBOX="Updating Dropbox"
_MSG_RETRIEVING_LAST_DROPBOX_VERSION="Retrieving last Dropbox version..."
_MSG_DOWNLOADING_DROPBOX="Downloading Dropbox"
_MSG_INSTALLING_DROPBOX="Installing Dropbox"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

# Update (1) or not (0)
_UPDATE=1

INDENT_STRING=""

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;

    --no-update)
    _UPDATE=0
    shift
    ;;
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}

printIndent
printf "%s\n" "$_MSG_CHECKING_DROPBOX_ENV"

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

function getDropboxLastVersion() {
  _DROPBOX_LAST_DEB=$(
    curl -sL https://linux.dropbox.com/packages/debian/ | \
    grep amd64.deb | \
    tail -n 1 | \
    cut -d'"' -f2)
  _DROPBOX_CMD_LAST_VERSION="$(echo "$_DROPBOX_LAST_DEB" | cut -d'_' -f2)"
}

function downloadDropbox() {
  _DROPBOX_DOWNLOAD_URL="https://linux.dropbox.com/packages/debian/$_DROPBOX_LAST_DEB"
  curl -sL -o "$_DROPBOX_LAST_DEB" "$_DROPBOX_DOWNLOAD_URL"
}

function installDropbox() {
  sudo dpkg -i "$_DROPBOX_LAST_DEB" > /dev/null || exit $?
  sudo rm -f "$_DROPBOX_LAST_DEB"
}

_DROPBOX_BINARY_PATH="$(command -v dropbox)"
if [ "$_DROPBOX_BINARY_PATH" != "" ]; then
  _DROPBOX_INSTALLED_VERSION=$(dropbox version | tail -n 1 | cut -d' ' -f5)
  printIndent
  printf "  %s (v%s)" "$_MSG_DROPBOX_FOUND_INSTALLED" \
    "$_DROPBOX_INSTALLED_VERSION"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  if [ $_UPDATE -eq 0 ]; then
    exit 0
  fi;
  printIndent
  printf "  %s" "$_MSG_CHECKING_IF_IS_UPDATED"
  getDropboxLastVersion

  if [ "$_DROPBOX_CMD_LAST_VERSION" = "$_DROPBOX_INSTALLED_VERSION" ]; then
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
    exit 0
  else
    printf " \e[91m\xE2\x9C\x95\e[39m\n"

    printIndent
    printf "  %s (v%s -> v%s)..." "$_MSG_UPDATING_DROPBOX" \
      "$_DROPBOX_INSTALLED_VERSION" "$_DROPBOX_CMD_LAST_VERSION"
    downloadDropbox
    installDropbox
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
else
  printIndent
  printf "  %s" "$_MSG_RETRIEVING_LAST_DROPBOX_VERSION"
  getDropboxLastVersion

  printf " (v%s)" "$_DROPBOX_CMD_LAST_VERSION"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printIndent
  printf "  %s (v%s)..." "$_MSG_DOWNLOADING_DROPBOX" "$_DROPBOX_CMD_LAST_VERSION"
  downloadDropbox
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printIndent
  printf "  %s (v%s)..." "$_MSG_INSTALLING_DROPBOX" "$_DROPBOX_CMD_LAST_VERSION"
  installDropbox
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;
