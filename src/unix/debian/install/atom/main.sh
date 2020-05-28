#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_ALREADY_INSTALLED="is already installed"
_MSG_CHECKING_ATOM="Checking Atom..."
_MSG_ERROR_OBTAINING_ATOM_PUBLIC_KEY="An error happen rerieving Atom public key:"
_MSG_ADDING_REPO="Adding repository..."
_MSG_UPDATING_PACKAGES="Updating packages..."
_MSG_ATOM_FOUND="Atom found"
_MSG_RUNNING_INSTALLATION_SCRIPT="Running installation script..."
_MSG_ERROR_INSTALLING_ATOM="An error happen installing Atom"

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
ATOM_BINARY_PATH="$(command -v atom)"
if [ "$ATOM_BINARY_PATH" != "" ]; then
  ATOM_VERSION=$(
    apm -v | \
    sed -n 4p | \
    cut -d' ' -f2 | \
    sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")
  printf "Atom v%s %s" "$ATOM_VERSION" "$_MSG_ALREADY_INSTALLED"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "%s\n" "$_MSG_CHECKING_ATOM"

  INSTALLATION_DEPENDENCIES=(
    "wget"
    "jq"
  )
  for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
    if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
    fi;
  done;

  printPrependedStdout
  printf "  %s..." "$_MSG_ADDING_REPO"
  SIGN_ATOM_GPG_KEY_STDERR=$(
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | \
    sudo apt-key add - 2>&1 > /dev/null)
  SIGN_ATOM_GPG_KEY_EXIT_CODE=$?
  if [ $SIGN_ATOM_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_OBTAINING_ATOM_PUBLIC_KEY" >&2
    printf "%s\n" "$SIGN_ATOM_GPG_KEY_STDERR" >&2
    exit $SIGN_ATOM_GPG_KEY_EXIT_CODE
  fi;
  sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  %s" "$_MSG_UPDATING_PACKAGES"
  sudo apt-get update -qqq > /dev/null
  printf " \e[92m\xE2\x9C\x94\e[39m\n"


  ATOM_VERSION=$(
    apt-cache show atom | \
    grep Version | \
    head -n 1 | \
    cut -d' ' -f2)
  if [ "$ATOM_VERSION" != "" ]; then
    printPrependedStdout
    printf "  %s (v%s)" "$_MSG_ATOM_FOUND" "$ATOM_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;

  printPrependedStdout
  printf "  %s" "$_MSG_RUNNING_INSTALLATION_SCRIPT"
  INSTALL_ATOM_STDERR=$(
    sudo apt-get install atom -y -qqq 2>&1 > /dev/null)
  INSTALL_ATOM_EXIT_CODE=$?
  if [ "$INSTALL_ATOM_EXIT_CODE" -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s" "$_MSG_ERROR_INSTALLING_ATOM" >&2
    if [ "$ATOM_VERSION" != "" ]; then
      printf " (v%s)" "$ATOM_VERSION" >&2
    fi;
    printf ":\n%s\n" "$INSTALL_ATOM_STDERR" >&2
    exit $INSTALL_ATOM_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;
