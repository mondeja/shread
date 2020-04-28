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

if [ -z "$UNIX_DISTRO" ]; then
  if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq curl > /dev/null
  fi;
  source <(curl -sL https://softmond.gitlab.io/scripts/unix/_/util/get-distro.sh)
fi;

printPrependedStdout
printf "Comprobando ecosistema Mozilla...\n"

printPrependedStdout
if command -v firefox &> /dev/null; then
  _MOZILLA_FIREFOX_VERSION=$(sudo -u $SUDO_USER firefox --version | cut -d' ' -f3)
  printf "  Encontrado Mozilla Firefox v$_MOZILLA_FIREFOX_VERSION"
  printf " instalado \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "  Instalando paquetes de Mozilla Firefox\n"
  if [ "$UNIX_DISTRO" = "debian" ]; then
    _FIREFOX_LATEST_VERSION=$(sudo apt-cache policy firefox-esr | grep -Po "(\d+\.)+\d+" | head -n 1)
  else
    _FIREFOX_LATEST_VERSION=$(sudo apt-cache policy firefox | grep -Po "(\d+\.)+\d+" | head -n 1)
  fi;
  printf " (v$_FIREFOX_LATEST_VERSION)..."
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

  for PACKAGE in "${_MOZILLA_FIREFOX_PACKAGES[@]}"
  do
    printPrependedStdout
    printf "    $PACKAGE"
    if [[ "$(sudo dpkg -s $PACKAGE 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo apt-get install -y -qqq $PACKAGE > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
fi;

printPrependedStdout
_GECKODRIVER_PATH=$(which geckodriver)
if [ "$_GECKODRIVER_PATH" != "" ]; then
  printf "  Encontrado geckodriver v$(geckodriver --version | head -n1 | cut -d' ' -f2)"
  printf " instalado"
else
  printf "  Instalando geckodriver..."
  sudo apt-get install -y -qqq firefox-geckodriver > /dev/null
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"
