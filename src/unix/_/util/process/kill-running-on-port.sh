#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

if [[ "$(sudo dpkg -s net-tools 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq net-tools > /dev/null
  if [ $? -ne 0 ]; then
    exit $?
  fi;
fi;

UNKNOWN_SERVICE_PID=$(sudo netstat -nlp | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:$1|\:\:\:$1" | awk '{print $7}' | sed -e "s/\/.*//g")
if [[ ! -z "$UNKNOWN_SERVICE_PID" ]]; then
  # lo detenemos
  sudo kill $UNKNOWN_SERVICE_PID
fi;
