#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_LOGIN=0
_CONTAINER_NAME="debian-9-12-shread"

for arg in "$@"; do
  case $arg in
    --login)
    _LOGIN=1
    shift
    ;;

    --name)
    shift
    _CONTAINER_NAME=$1
    shift
    ;;
  esac
done

function pullContainer() {
  docker pull debian:stretch
  docker run -itd --name "$_CONTAINER_NAME" debian:stretch
  docker cp . "$_CONTAINER_NAME":/shread

  docker exec "$_CONTAINER_NAME" \
    bash -c 'printf "deb http://deb.debian.org/debian stretch main contrib non-free\ndeb-src http://deb.debian.org/debian stretch main contrib non-free\n\ndeb http://deb.debian.org/debian-security/ stretch/updates main contrib non-free\ndeb-src http://deb.debian.org/debian-security/ stretch/updates main contrib non-free\n\ndeb http://deb.debian.org/debian stretch-updates main contrib non-free\ndeb-src http://deb.debian.org/debian stretch-updates main contrib non-free\n" > /etc/apt/sources.list'
  docker exec "$_CONTAINER_NAME" \
    bash -c "apt-get update && apt-get install -y \
    make \
    sudo \
    apt-utils \
    dialog \
    aptitude \
    curl \
    wget \
    ca-certificates \
    apt-transport-https \
    gnupg2"
  docker exec "$_CONTAINER_NAME" \
    bash -c "useradd -m docker && \
    echo 'docker:docker' | chpasswd && \
    adduser docker sudo"
  docker exec -w /shread "$_CONTAINER_NAME" \
    bash -c "bash scripts/build.sh"
}

if ! docker ps -a | grep -q "$_CONTAINER_NAME"; then
  pullContainer
fi;

if [ "$( docker container inspect -f '{{.State.Running}}' "$_CONTAINER_NAME" )" == "false" ]; then
  docker start "$_CONTAINER_NAME"
fi;

if [ "$_LOGIN" -eq 1 ]; then
  docker exec -it "$_CONTAINER_NAME" bash -c "cd /shread && /bin/bash"
fi;
