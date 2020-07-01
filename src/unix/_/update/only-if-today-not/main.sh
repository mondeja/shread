#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Executes `sudo apt-get update` and `sudo apt-get upgrade -y`
#   if not was executed today at last time:
#   https://askubuntu.com/a/410259/1033572

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_UPDATING_SYSTEM_PACKAGES="Updating system packages..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

INDENT_STRING=""

_UPDATE=0

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;

    --update)
    _UPDATE=1
    shift
    ;;
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}

if [ "$(command -v pacman)" = "" ]; then
  if [ -z "$_SCRIPT_FILENAME" ]; then
    filepath="src/unix/_/download/pacapt/main.sh"
    bash "$filepath" > /dev/null
  else
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
fi;

function updatePackages() {
  printIndent
  printf "%s" "$_MSG_UPDATING_SYSTEM_PACKAGES"
  sudo pacman update > /dev/null || exit $?
  if [ $_UPDATE -eq 1 ]; then
    sudo pacman -Syu -y >&2 > /dev/null || exit $?
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
