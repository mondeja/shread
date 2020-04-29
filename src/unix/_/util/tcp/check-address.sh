#!/bin/bash

_MSG_MUST_SPECIFY_ADDRESS="You must specify an address with parameter"

_ADDRESS=""
_MAX_ATTEMPTS=40
_SLEEP=1
_PRINTF_BETWEEN_SLEEPS=""
_INSECURE=""

for arg in "$@"
do
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

if [ -z "$_ADDRESS" ]; then
  printf "$_MSG_MUST_SPECIFY_ADDRESS --address" >&2
  exit 1
fi;

until $(curl -sL --output /dev/null $_INSECURE --head --fail $_ADDRESS); do
  printf "$_PRINTF_BETWEEN_SLEEPS"
  sleep $_SLEEP
  _ATTEMPTS=`expr $_ATTEMPTS + 1`
  if [ $_ATTEMPTS -gt $_MAX_ATTEMPTS ]; then
    exit 1
  fi;
done
