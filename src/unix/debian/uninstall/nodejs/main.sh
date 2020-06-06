#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_UNINSTALLING_NODEJS_ECOSYSTEM="Uninstalling NodeJS ecosystem..."
_MSG_UNINSTALLING_NODEJS="Uninstalling NodeJS"
_MSG_NODEJS_IS_NOT_INSTALLED="NodeJS is not installed"
_MSG_NPM_IS_NOT_INSTALLED="NPM is not installed"
_MSG_UNINSTALLING_NPM="Uninstalling NPM..."
_MSG_YARN_IS_NOT_INSTALLED="Yarn is not installed"

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
    --distro)
    shift
    UNIX_DISTRO=$1
    shift
    ;;
  esac
done

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

if [ -z "$UNIX_DISTRO" ]; then
  if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq curl > /dev/null
  fi;
  # shellcheck source=src/unix/_/util/get-distro/main.sh
  source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro.sh)
fi;

if [ "$UNIX_DISTRO" = "ubuntu" ] || [ "$UNIX_DISTRO" = "debian" ]; then
  printPrependedStdout
  printf "%s\n" "$_MSG_UNINSTALLING_NODEJS_ECOSYSTEM"

  printPrependedStdout
  NODE_JS_BINARY_PATH=$(command -v node)
  if [ "$NODE_JS_BINARY_PATH" = "" ]; then
    printf "  %s" "$_MSG_NODEJS_IS_NOT_INSTALLED"
  else
    printf "  %s (v%s)..." "$_MSG_UNINSTALLING_NODEJS" "$(node -v | cut -c2-15)"
    sudo apt-get purge nodejs -y -qqq > /dev/null

    APT_SOURCE_FILES_TO_DELETE=(
      "nodesource.list"
      "nodesource.list.distUpgrade"
      "nodesource.list.save"
    )
    for APT_SOURCE_FILENAME in "${APT_SOURCE_FILES_TO_DELETE[@]}"; do
      sudo rm -f "/etc/apt/sources.list.d/$APT_SOURCE_FILENAME" > /dev/null || exit $?
    done
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  NPM_BINARY_PATH=$(command -v npm)
  if [ "$NPM_BINARY_PATH" = "" ]; then
    printf "  %s" "$_MSG_NPM_IS_NOT_INSTALLED"
  else
    printf "  %s" "$_MSG_UNINSTALLING_NPM"
    npm uninstall npm -g --quiet
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  YARN_BINARY_PATH=$(command -v npm)
  if [ "$YARN_BINARY_PATH" = "" ]; then
    printf "  %s \e[92m\xE2\x9C\x94\e[39m\n" "$_MSG_YARN_IS_NOT_INSTALLED"
  fi;
fi;
