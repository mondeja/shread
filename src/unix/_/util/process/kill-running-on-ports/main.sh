#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_LEAVING_PORTS_FREE="Leaving ports free of processes..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

INDENT_STRING=""
_PORTS_STRING=""

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
    --ports)
    shift
    _PORTS_STRING=$1
    shift
    ;;
  esac
done

function printPrependedStdout() {
  printf "%s" "$INDENT_STRING"
}

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

if [[ "$(sudo pacman -Qi net-tools 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo pacman -S net-tools > /dev/null || exit $?
fi;

printPrependedStdout
printf "%s...\n" "$_MSG_LEAVING_PORTS_FREE"
_PORTS=$(echo "$_PORTS_STRING" | tr "," "\n")
for PORT in $_PORTS; do
  printPrependedStdout
  printf "  %s" "$PORT"
  UNKNOWN_SERVICE_PID=$(
    sudo netstat -nlp | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:$PORT|\:\:\:$PORT" | \
    awk '{print $7}' | \
    sed -e "s/\/.*//g")
  if [[ -n "$UNKNOWN_SERVICE_PID" ]]; then
    # lo detenemos
    sudo kill "$UNKNOWN_SERVICE_PID"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done
