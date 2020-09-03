#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_MUST_SPECIFY_ADDRESS="You must specify an address with the parameter"

_ADDRESS=""
_MAX_ATTEMPTS=40
_SLEEP=1
_PRINTF_BETWEEN_SLEEPS=""
_INSECURE=""

for arg in "$@"; do
  case $arg in
    --address)
    shift
    _ADDRESS=$1
    shift
    ;;

    --max-attempts)
    shift
    _MAX_ATTEMPTS=$1
    shift
    ;;

    --sleep)
    shift
    _SLEEP=$1
    shift
    ;;

    --printf-between-sleeps)
    shift
    _PRINTF_BETWEEN_SLEEPS=$1
    shift
    ;;

    --insecure)
    _INSECURE="--insecure"
    shift
    ;;
  esac
done

if [ "$(command -v pacman)" = "" ]; then
  if [ -z "$_SCRIPT_FILENAME" ]; then
    filepath="src/unix/_/download/pacapt/main.sh"
    bash "$filepath" > /dev/null
  else
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
fi;

if [[ "$(sudo pacman -Qi net-tools 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo pacman -S -- -y curl > /dev/null || exit $?
fi;

if [ -z "$_ADDRESS" ]; then
  printf "%s --address" "$_MSG_MUST_SPECIFY_ADDRESS" >&2
  exit 1
fi;

until curl -sL --output /dev/null "$_INSECURE" --head --fail "$_ADDRESS"; do
  printf "%s" "$_PRINTF_BETWEEN_SLEEPS"
  sleep "$_SLEEP"
  _ATTEMPTS="$(("$_ATTEMPTS" + 1))"
  if [ "$_ATTEMPTS" -gt "$_MAX_ATTEMPTS" ]; then
    exit 1
  fi;
done
