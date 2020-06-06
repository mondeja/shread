#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_INSTALLING_CIRCLECI="Installing CircleCI"
_MSG_UPDATING_CIRCLECI="Updating CircleCI"
_MSG_FOUND_CIRCLECI_INSTALLED="CircleCI found installed"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

for arg in "$@"; do
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
  sudo apt-get install -y -qqq curl > /dev/null || exit $?
fi;

_CIRCLECI_BINARY_PATH="$(command -v circleci)"
_CIRCLECI_LATEST_RELEASE_VERSION=$(
  curl -sLI -o /dev/null -w '%{url_effective}' \
    https://github.com/CircleCI-Public/circleci-cli/releases/latest/  | \
    cut -d "v" -f2)

downloadCircleCI() {
  curl -fLSs https://circle.ci/cli > install-circleci.sh
  chmod +x install-circleci.sh
  sudo DESTDIR="$1" VERSION="$2" bash install-circleci.sh > /dev/null
  rm -f install-circleci.sh
}

printPrependedStdout
if [ "$_CIRCLECI_BINARY_PATH" = "" ]; then
  printf "%s (v%s)..." "$_MSG_INSTALLING_CIRCLECI" "$_CIRCLECI_LATEST_RELEASE_VERSION"
  downloadCircleCI /usr/bin "$_CIRCLECI_LATEST_RELEASE_VERSION"
else
  _CIRCLECI_INSTALLED_VERSION=$(
    "$_CIRCLECI_BINARY_PATH" version |  cut -d'+' -f1)

  if [ "$_CIRCLECI_INSTALLED_VERSION" != "$_CIRCLECI_LATEST_RELEASE_VERSION" ]; then
    printf "%s (v%s" "$_MSG_UPDATING_CIRCLECI" "$_CIRCLECI_INSTALLED_VERSION"
    printf " -> v%s)..." "$_CIRCLECI_LATEST_RELEASE_VERSION"
    sudo rm -f "$_CIRCLECI_BINARY_PATH"
    downloadCircleCI /usr/bin "$_CIRCLECI_LATEST_RELEASE_VERSION"
  else
    printf "%s (v%s)" "$_MSG_FOUND_CIRCLECI_INSTALLED" "$_CIRCLECI_INSTALLED_VERSION"
  fi;
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"
