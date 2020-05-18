#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "$_MSG_EXECUTED_AS_SUPERUSER\n" >&2
  exit 1
fi;

# If is available, use LSB identification
if [ -f /etc/lsb-release -o -d /etc/lsb-release.d ]; then
  UNIX_DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
else
  UNIX_DISTRO=$(ls -d /etc/[A-Za-z]*[_-][rv]e[lr]* | grep -v "lsb" | cut -d'/' -f3 | cut -d'-' -f1 | cut -d'_' -f1)
fi

if [ "$(echo $(echo $(echo "$UNIX_DISTRO" | cut -c1-6) | cut -c1-6))" = "debian" ]; then
  UNIX_DISTRO="debian"
fi;

if [ "$UNIX_DISTRO" = "Ubuntu" ]; then
  UNIX_DISTRO="ubuntu"
fi

export UNIX_DISTRO

export UNIX_DISTRO_CAPITALIZED="$(tr '[:lower:]' '[:upper:]' <<< ${UNIX_DISTRO:0:1})${UNIX_DISTRO:1}"
