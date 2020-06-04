#!/bin/bash

# Executes `sudo apt-get update` and `sudo apt-get upgrade -y`
#   if not was executed today at last time:
#   https://askubuntu.com/a/410259/1033572

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_UPDATING_SYSTEM_PACKAGES="Updating system packages..."
_MSG_ERROR_UPDATING_SYSTEM_PACKAGES="An error happen updating system packages."
_MSG_RELAUNCHING_WITH_STDOUT="Relaunching with standard output and canceling the installation..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
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
  printf "%s" "$_MSG_UPDATING_SYSTEM_PACKAGES"
  sudo apt-get update -y -qqq || exit $?
  if [ $_UPDATE -eq 1 ]; then
    sudo apt-get upgrade -y -qqq > /dev/null
    _UPGRADE_COMMAND_EXIT_CODE=$?
    if [ $_UPGRADE_COMMAND_EXIT_CODE -ne 0 ]; then
      printf "%s\n" "$_MSG_ERROR_UPDATING_SYSTEM_PACKAGES" >&2
      printf "%s\n" "$_MSG_RELAUNCHING_WITH_STDOUT" >&2
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
