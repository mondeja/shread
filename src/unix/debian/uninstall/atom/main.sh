#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_UNINSTALLING_ATOM="Uninstalling Atom"
_MSG_ERROR_UNINSTALLING_ATOM="An error happen uninstalling Atom"
_MSG_ATOM_IS_NOT_INSTALLED="Atom is not installed"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s" "$_MSG_EXECUTED_AS_SUPERUSER\n" >&2
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
ATOM_BINARY_PATH=$(command -v atom)
if [ "$ATOM_BINARY_PATH" != "" ]; then
  ATOM_VERSION=$(
    apm -v | \
    sed -n 4p | \
    cut -d' ' -f2 | \
    sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")

  printf "$_MSG_UNINSTALLING_ATOM (v$ATOM_VERSION)..."
  UNINSTALL_ATOM_STDERR=$(sudo apt-get purge atom -y -qqq 2>&1 > /dev/null)
  UNINSTALL_ATOM_EXIT_CODE=$?
  if [ $UNINSTALL_ATOM_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n$_MSG_ERROR_UNINSTALLING_ATOM:\n $UNINSTALL_ATOM_STDERR\n" >&2
    exit $UNINSTALL_ATOM_EXIT_CODE
  fi;

  APT_SOURCE_FILES_TO_DELETE=(
    "atom.list"
    "atom.list.distUpgrade"
    "atom.list.save"
  )
  for APT_SOURCE_FILENAME in "${APT_SOURCE_FILES_TO_DELETE[@]}"; do
    sudo rm -f /etc/apt/sources.list.d/$APT_SOURCE_FILENAME > /dev/null || exit $?
  done
else
  printf "$_MSG_ATOM_IS_NOT_INSTALLED"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"
