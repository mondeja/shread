#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_SETTING_GRUB_TIMEOUT="Setting boot timeout for Grub"
_MSG_GRUB_FILE_NOT_FOUND="Grub configuration file not found"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

INDENT_STRING=""
_NEW_TIMEOUT="10"
_CONFIG_FILEPATH="/etc/default/grub"

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
    --timeout)
    shift
    _NEW_TIMEOUT=$1
    shift
    ;;

    --config-filepath)
    shift
    _CONFIG_FILEPATH=$1
    shift
    ;;
  esac
done

# Remove spaces
_NEW_TIMEOUT="$(printf "%s" "$_NEW_TIMEOUT" | sed -e 's/[[:space:]]*//g')"

function printPrependedStdout() {
  printf "%s" "$INDENT_STRING"
}

function checkGrubFileExists() {
  if [ ! -f "$_CONFIG_FILEPATH" ]; then
    printPrependedStdout
    printf "%s (%s)" "$_MSG_GRUB_FILE_NOT_FOUND" "$_CONFIG_FILEPATH" >&2
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    exit 0
  fi;
}

function setNewGrubTimeout() {
  printPrependedStdout
  printf "%s (%s)..." "$_MSG_SETTING_GRUB_TIMEOUT" "$_NEW_TIMEOUT"
  _GRUB_TIMEOUT_CONFIG_EXISTS="$( grep "GRUB_TIMEOUT=" < "$_CONFIG_FILEPATH")"
  if [ "$_GRUB_TIMEOUT_CONFIG_EXISTS" = "" ]; then
    printf "\nGRUB_TIMEOUT=%s\n" "$_NEW_TIMEOUT" >> "$_CONFIG_FILEPATH"
  else
    _CURRENT_TIMEOUT="$(
      (grep "GRUB_TIMEOUT=" | cut -d'=' -f2) < "$_CONFIG_FILEPATH" )"
    if [ "$_CURRENT_TIMEOUT" != "$_NEW_TIMEOUT" ]; then
      sed -i "s/GRUB_TIMEOUT=[0-9]*/GRUB_TIMEOUT=$_NEW_TIMEOUT/" "$_CONFIG_FILEPATH"
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function main() {
  checkGrubFileExists

  setNewGrubTimeout
}
main
