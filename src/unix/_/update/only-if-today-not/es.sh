#!/bin/bash

: '
  Ejecuta `sudo apt-get update` y `sudo apt-get upgrade -y`
    si no fue ejecutado hoy por última vez:
    https://askubuntu.com/a/410259/1033572
'

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

_UPDATE=0

for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
        shift
        ;;

        --update)
        _UPDATE=1
        shift
        ;;
    esac
done

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

function updatePackages() {
  printPrependedStdout
  printf "Actualizando paquetes del sistema..."
  sudo apt-get update -y -qqq || exit $?
  if [ $_UPDATE -eq 1 ]; then
    sudo apt-get upgrade -y -qqq > /dev/null
    _UPGRADE_COMMAND_EXIT_CODE=$?
    if [ $_UPGRADE_COMMAND_EXIT_CODE -ne 0 ]; then
      printf "Ocurrió un error actualizando los paquetes del sistema.\n" >&2
      printf "Relanzando con salida estándar y cancelando la instalación...\n" >&2
      sudo apt-get upgrade -y
      exit $_UPGRADE_COMMAND_EXIT_CODE
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

if [ -f "/var/cache/apt/pkgcache.bin" ]; then
  _LAST_DAY_EXECUTED=$(
    stat /var/cache/apt/pkgcache.bin | \
    tail -n 3 | \
    head -n 1 | \
    cut -d' ' -f2)
  _NOW_DATE=$(date +"%Y-%m-%d")
  if [ "$_LAST_DAY_EXECUTED" != "$_NOW_DATE" ]; then
    updatePackages
  fi;
else
  updatePackages
fi;
