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

printPrependedStdout
ATOM_BINARY_PATH=$(which atom)
if [ "$ATOM_BINARY_PATH" != "" ]; then
  ATOM_VERSION=$(
    apm -v | \
    sed -n 4p | \
    cut -d' ' -f2 | \
    sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")

  printf "Desintalando Atom (v$ATOM_VERSION)..."
  UNINSTALL_ATOM_STDERR=$(sudo apt-get purge atom -y -qqq 2>&1 > /dev/null)
  UNINSTALL_ATOM_EXIT_CODE=$?
  if [ $UNINSTALL_ATOM_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error desinstalando Atom:\n $UNINSTALL_ATOM_STDERR\n" >&2
    exit $UNINSTALL_ATOM_EXIT_CODE
  fi;

  APT_SOURCE_FILES_TO_DELETE=(
    "atom.list"
    "atom.list.distUpgrade"
    "atom.list.save"
  )
  for APT_SOURCE_FILENAME in "${APT_SOURCE_FILES_TO_DELETE[@]}"
  do
    sudo rm -f /etc/apt/sources.list.d/$APT_SOURCE_FILENAME > /dev/null
    if [ $? -ne 0 ]; then
      exit $?
    fi;
  done
else
  printf "Atom no se encuentra instalado"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"
