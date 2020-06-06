#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_CHECKING_ECOSYSTEM="Checking Chrome ecosystem..."
_MSG_UNABLE_TO_INSTALL_32="Is not possible to install Google Chrome on 32 bits systems."
_MSG_INSTALLING_GOOGLE_CHROME="Installing Google Chrome..."
_MSG_FOUND_CHROME_INSTALLED="Google Chrome found installed"
_MSG_INSTALLING_CHROMEDRIVER="Installing chromedriver"
_MSG_UPDATING_CHROMEDRIVER="Updating chromedriver"
_MSG_FOUND_CHROMEDRIVER_INSTALLED="Chromedriver found installed"

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

if [[ "$(sudo dpkg -s debconf-utils 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq debconf-utils > /dev/null
fi;
if [ "$(command -v debconf-get-selections)" != "" ]; then
  _ORIGINAL_DEBCONF_FRONTEND=$(
    sudo debconf-get-selections | \
    grep debconf/frontend | \
    awk '{print $4}')
  sudo sh -c "echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections"
fi;

if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq curl > /dev/null || exit $?
fi;

printPrependedStdout
printf "%s\n" "$_MSG_CHECKING_ECOSYSTEM"

_GOOGLE_CHROME_BINARY_PATH=""
function cacheGoogleChromeBinaryPath() {
  _GOOGLE_CHROME_BINARY_PATH="$(command -v google-chrome)"
  if [ "$_GOOGLE_CHROME_BINARY_PATH" = "" ]; then
    _GOOGLE_CHROME_BINARY_PATH="$(command -v google-chrome-stable)"
  fi;
}

cacheGoogleChromeBinaryPath
printPrependedStdout
if [ "$_GOOGLE_CHROME_BINARY_PATH" = "" ]; then
  # Si no está instalado Google Chrome
  #   Si estamos en una arquitectura de 32 bits
  if [[ "$(uname -m)" != "x86_64" ]]; then
    printf "  %s" "$_MSG_UNABLE_TO_INSTALL_32" >&2
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    exit 1
  fi;
  printf "  %s" "$_MSG_INSTALLING_GOOGLE_CHROME"
  # Descargamos el paquete estable de Google Chrome
  curl -sL https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    --output google-chrome-stable_current_amd64.deb

  # Instalamos el paquete
  sudo apt-get install -y -qqq \
    ./google-chrome-stable_current_amd64.deb > \
    /dev/null

  # Eliminamos el paquete descargado
  sudo rm -f google-chrome-stable_current_amd64.deb
  cacheGoogleChromeBinaryPath
  printf " (v%s)" "$($_GOOGLE_CHROME_BINARY_PATH --version | cut -d' ' -f3)"
else
  printf "  %s" "$_MSG_FOUND_CHROME_INSTALLED"
  printf " (v%s)" "$($_GOOGLE_CHROME_BINARY_PATH --version | cut -d' ' -f3)"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"


# Comprobamos la versión major de Google Chrome instalada
GOOGLE_CHROME_MAJOR_VERSION="$("$_GOOGLE_CHROME_BINARY_PATH" --version | cut -d' ' -f3 | cut -d'.' -f1)"

# Obtenemos el archivo XML de control de versiones de ChromeDriver
curl -sL https://chromedriver.storage.googleapis.com/ \
  --output chromedriver-versions.xml
# Obtenemos la versión de chromedriver correspondiente a la versión
#   instalada de google chrome
CHROMEDRIVER_VERSION=$(grep -Po "<Key>$GOOGLE_CHROME_MAJOR_VERSION\.*\d*\.*\d+\.*\d*\/chromedriver_linux64\.zip" chromedriver-versions.xml |
    grep -Po "$GOOGLE_CHROME_MAJOR_VERSION\.*\d*\.*\d+\.*\d*" | \
    head -n 1)
sudo rm -f chromedriver-versions.xml

installChromeDriver() {
  # Descargamos el driver de Chrome que corresponde a la versión
  #   del navegador instalada
  wget -q "https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip"

  # Descomprimimos el driver
  unzip -q chromedriver_linux64.zip

  # Eliminamos el archivo comprimido
  sudo rm -f chromedriver_linux64.zip

  # Movemos el driver a la ruta configurada
  if [ -f /usr/bin/chromedriver ]; then
    sudo rm -f /usr/bin/chromedriver
  fi;
  sudo mv -f chromedriver /usr/bin/chromedriver
}

printPrependedStdout
_CHROMEDRIVER_BINARY_PATH="$(command -v chromedriver)"
if [ "$_CHROMEDRIVER_BINARY_PATH" = "" ]; then
  printf "  %s (v%s)..." "$_MSG_INSTALLING_CHROMEDRIVER" "$CHROMEDRIVER_VERSION"
  installChromeDriver
else
  # Chromedriver está instalado, comprobamos si podemos actualizarlo
  _CHROMEDRIVER_INSTALLED_VERSION="$("$_CHROMEDRIVER_BINARY_PATH" --version | cut -d' ' -f2)"

  if [ "$_CHROMEDRIVER_INSTALLED_VERSION" != "$CHROMEDRIVER_VERSION" ]; then
    printf "  %s (v%s" "$_MSG_UPDATING_CHROMEDRIVER" "$_CHROMEDRIVER_INSTALLED_VERSION"
    printf " -> v%s)..." "$CHROMEDRIVER_VERSION"
    installChromeDriver
  else
    printf "  %s (v%s)" "$_MSG_FOUND_CHROMEDRIVER_INSTALLED" "$_CHROMEDRIVER_INSTALLED_VERSION"
  fi
fi
printf " \e[92m\xE2\x9C\x94\e[39m\n"

if [ "$(command -v debconf-get-selections)" != "" ]; then
  sudo sh -c "echo 'debconf debconf/frontend select $_ORIGINAL_DEBCONF_FRONTEND' | debconf-set-selections"
fi;
