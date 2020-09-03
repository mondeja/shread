#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_LOGIN=0
_CONTAINER_NAME="debian-10-shread"

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
  docker pull debian:buster
  docker run -itd --name "$_CONTAINER_NAME" debian:buster
  docker cp . "$_CONTAINER_NAME":/shread

  docker exec "$_CONTAINER_NAME" \
    bash -c "apt-get update && apt-get install -y \
    make \
    sudo \
    apt-utils \
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
  docker exec -w /shread "$_CONTAINER_NAME" bash -c "bash scripts/build.sh"
}

if ! docker ps -a | grep -q "$_CONTAINER_NAME"; then
  pullContainer
fi;

if [ "$( docker container inspect -f '{{.State.Running}}' "$_CONTAINER_NAME" )" == "false" ]; then
  docker start "$_CONTAINER_NAME"
fi;

if [ "$_LOGIN" -eq 1 ]; then
  docker exec -it "$_CONTAINER_NAME" /bin/bash
fi;
