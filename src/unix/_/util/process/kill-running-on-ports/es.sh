#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""
_PORTS_STRING=""
for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
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
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

if [[ "$(sudo dpkg -s net-tools 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq net-tools > /dev/null
  if [ $? -ne 0 ]; then
    exit $?
  fi;
fi;

printPrependedStdout
printf "Dejando puertos libres de procesos...\n"
_PORTS=$(echo $_PORTS_STRING | tr "," "\n")
for PORT in $_PORTS
do
  printPrependedStdout
  printf "  $PORT"
  UNKNOWN_SERVICE_PID=$(sudo netstat -nlp | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:$PORT|\:\:\:$PORT" | awk '{print $7}' | sed -e "s/\/.*//g")
  if [[ ! -z "$UNKNOWN_SERVICE_PID" ]]; then
    # lo detenemos
    sudo kill $UNKNOWN_SERVICE_PID
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done
