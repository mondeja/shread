#!/bin/bash

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

printPrependedStdout
printf "Comprobando entorno Dropbox...\n"

if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq curl > /dev/null || exit $?
fi;

function getDropboxLastVersion() {
  _DROPBOX_LAST_DEB=$(
    curl -sL https://linux.dropbox.com/packages/debian/ | \
    grep amd64.deb | \
    tail -n 1 | \
    cut -d'"' -f2)
  _DROPBOX_CMD_LAST_VERSION=$(echo $_DROPBOX_LAST_DEB | cut -d'_' -f2)
}

function downloadDropbox() {
  # Descargamos la última version
  _DROPBOX_DOWNLOAD_URL="https://linux.dropbox.com/packages/debian/$_DROPBOX_LAST_DEB"
  curl -sL -o $_DROPBOX_LAST_DEB $_DROPBOX_DOWNLOAD_URL
}

function installDropbox() {
  sudo dpkg -i $_DROPBOX_LAST_DEB > /dev/null || exit $?
  sudo rm -f $_DROPBOX_LAST_DEB
}

# Comprobamos si está instalado
_DROPBOX_BINARY_PATH=$(which dropbox)
if [ "$_DROPBOX_BINARY_PATH" != "" ]; then
  _DROPBOX_INSTALLED_VERSION=$(dropbox version | tail -n 1 | cut -d' ' -f5)
  printPrependedStdout
  printf "  Encontrado Dropbox instalado (v$_DROPBOX_INSTALLED_VERSION)"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  Comprobando si se encuentra actualizado..."
  getDropboxLastVersion

  if [ "$_DROPBOX_CMD_LAST_VERSION" = "$_DROPBOX_INSTALLED_VERSION" ]; then
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
    exit 0
  else
    printf " \e[91m\xE2\x9C\x95\e[39m\n"

    printPrependedStdout
    printf "  Actualizando Dropbox (v$_DROPBOX_INSTALLED_VERSION -> v$_DROPBOX_CMD_LAST_VERSION)..."
    downloadDropbox
    installDropbox
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
else
  printPrependedStdout
  printf "  Buscando última versión de Dropbox..."
  getDropboxLastVersion

  printf " (v$_DROPBOX_CMD_LAST_VERSION)"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  Descargando Dropbox (v$_DROPBOX_CMD_LAST_VERSION)..."
  downloadDropbox
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  Instalando Dropbox..."
  installDropbox
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;
