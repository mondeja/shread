#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Si está disponible, usamos la identificación LSB
if [ -f /etc/lsb-release -o -d /etc/lsb-release.d ]; then
    UNIX_DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
else
    # Si no, obtenemos la información de la distribución
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
