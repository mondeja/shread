#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [ "$(command -v lsb_release)" = "" ]; then
  # lsb_release is, as I know, only available in Debian based systems
  # so keep apt-get install and don't use pacman for now
  sudo apt-get install -y -qqq lsb-release > /dev/null
fi;

# If is available, use LSB identification
if [ -f /etc/lsb-release ] || [ -d /etc/lsb-release.d ]; then
  UNIX_DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
else
  # shellcheck disable=SC2010
  UNIX_DISTRO=$(ls -d /etc/[A-Za-z]*[_-][rv]e[lr]* | grep -v "lsb" | cut -d'/' -f3 | cut -d'-' -f1 | cut -d'_' -f1)
fi

if [ "$(echo "$UNIX_DISTRO" | head -n 1)" = "debian" ]; then
  UNIX_DISTRO="debian"
elif [ "$UNIX_DISTRO" = "Ubuntu" ]; then
  UNIX_DISTRO="ubuntu"
fi;

UNIX_DISTRO_VERSION_NAME="$(lsb_release -cs)"
UNIX_DISTRO_VERSION_NUMBER="$(lsb_release -rs)"
UNIX_DISTRO_VERSION_NUMBER_MAJOR=$(
  printf "%s" "$UNIX_DISTRO_VERSION_NUMBER" | cut -d'.' -f1)
UNIX_DISTRO_VERSION_NUMBER_MINOR=""
if [[ $UNIX_DISTRO_VERSION_NUMBER == *"."* ]]; then
  UNIX_DISTRO_VERSION_NUMBER_MINOR=$(
    printf "%s" "$UNIX_DISTRO_VERSION_NUMBER" | cut -d'.' -f2)
fi;

UNIX_DISTRO_CAPITALIZED="$(tr '[:lower:]' '[:upper:]' <<< ${UNIX_DISTRO:0:1})${UNIX_DISTRO:1}"

export UNIX_DISTRO
export UNIX_DISTRO_CAPITALIZED
export UNIX_DISTRO_VERSION_NAME
export UNIX_DISTRO_VERSION_NUMBER
export UNIX_DISTRO_VERSION_NUMBER_MAJOR
export UNIX_DISTRO_VERSION_NUMBER_MINOR
