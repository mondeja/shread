#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_CHECKING_MOZILLA_ECOSYSTEM="Checking Mozilla ecosystem..."
_MSG_FOUND_MOZILLA_FIREFOX_INSTALLED="Mozilla Firefox found installed in the system"
_MSG_INSTALLING_MOZILLA_FIREFOX_PACKAGES="Installing Mozilla Firefox packages..."
_MSG_FOUND_CHECKODRIVER_INSTALLED="Geckodriver found installed in the system"
_MSG_INSTALLING_GECKODRIVER="Installing geckodriver..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
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

if [ -z "$UNIX_DISTRO" ]; then
  if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq curl > /dev/null
  fi;
  # shellcheck source=src/unix/_/util/get-distro/main.sh
  source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro.sh)
fi;

printPrependedStdout
printf "%s\n" "$_MSG_CHECKING_MOZILLA_ECOSYSTEM"

printPrependedStdout
if command -v firefox &> /dev/null; then
  _MOZILLA_FIREFOX_VERSION=$(
    sudo -u "$SUDO_USER" firefox --version | cut -d' ' -f3)
  printf "  %s (v%s)" "$_MSG_FOUND_MOZILLA_FIREFOX_INSTALLED" "$_MOZILLA_FIREFOX_VERSION"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "  %s\n" "$_MSG_INSTALLING_MOZILLA_FIREFOX_PACKAGES"
  if [ "$UNIX_DISTRO" = "debian" ]; then
    _FIREFOX_LATEST_VERSION=$(
      sudo apt-cache policy firefox-esr | grep -Po '(\d+\.)+\d+' | head -n 1)
  else
    _FIREFOX_LATEST_VERSION=$(
      sudo apt-cache policy firefox | grep -Po '(\d+\.)+\d+' | head -n 1)
  fi;
  printf " (v%s)..." "$_FIREFOX_LATEST_VERSION"
  if [ "$UNIX_DISTRO" = "debian" ]; then
    _MOZILLA_FIREFOX_PACKAGES=(
      "firefox-esr"
      "firefox-esr-l10n-es-es"
    )
  else
    _MOZILLA_FIREFOX_PACKAGES=(
      "firefox"
    )
  fi;

  for PACKAGE in "${_MOZILLA_FIREFOX_PACKAGES[@]}"; do
    printPrependedStdout
    printf "    %s" "$PACKAGE"
    if [[ "$(sudo dpkg -s "$PACKAGE" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo apt-get install -y -qqq "$PACKAGE" > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
fi;

printPrependedStdout
_GECKODRIVER_PATH="$(command -v geckodriver)"
if [ "$_GECKODRIVER_PATH" != "" ]; then
  printf "  %s" "$_MSG_FOUND_CHECKODRIVER_INSTALLED"
  printf " (v%s)" "$(geckodriver --version | head -n1 | cut -d' ' -f2)"
else
  printf "  %s" "$_MSG_INSTALLING_GECKODRIVER"
  sudo apt-get install -y -qqq firefox-geckodriver > /dev/null
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"
