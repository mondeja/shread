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
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

INDENT_STRING=""

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}

printIndent
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

  if [ "$(command -v pacman)" = "" ]; then
    SCRIPT_FILENAME="$(basename "$0")"
    if [ "$SCRIPT_FILENAME" = "main.sh" ]; then
      filepath="src/unix/_/download/pacapt/main.sh"
      bash "$filepath" > /dev/null
    else
      url="https://mondeja.github.io/shread/unix/_/download/pacapt/$SCRIPT_FILENAME"
      curl -sL "$url" | sudo bash - > /dev/null
    fi;
  fi;

  INSTALLATION_DEPENDENCIES=(
    "wget"
    "jq"
  )
  for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S "$DEP" > /dev/null || exit $?
    fi;
  done;

  printIndent
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

  ARCH="amd64"
  case $(uname -m) in
      i386)   ARCH="386" ;;
      i686)   ARCH="386" ;;
      x86_64) ARCH="amd64" ;;
      arm)    dpkg --print-architecture | grep -q "arm64" && ARCH="arm64" || ARCH="arm" ;;
  esac
  sudo echo \
    "deb [arch=${ARCH}] https://packagecloud.io/AtomEditor/atom/any/ any main" \
    > /etc/apt/sources.list.d/atom.list
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printIndent
  printf "  %s" "$_MSG_UPDATING_PACKAGES"
  sudo pacman update > /dev/null
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  ATOM_VERSION="$(pacman -Qi atom | grep Version | cut -d' ' -f2)"
  if [ "$ATOM_VERSION" != "" ]; then
    printIndent
    printf "  %s (v%s)" "$_MSG_ATOM_FOUND" "$ATOM_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;

  printIndent
  printf "  %s" "$_MSG_RUNNING_INSTALLATION_SCRIPT"
  INSTALL_ATOM_STDERR="$(sudo pacman -S atom > /dev/null)"
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
