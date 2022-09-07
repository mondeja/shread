#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_LOGIN=0
_CONTAINER_NAME="debian-11-shread"

function usage {
  printf "Usage: %s [-h] [-l] [-n CONTAINER_NAME]\n\n" "$0"
  printf "  Initializes or reuses a debian:bullseye docker image building shread inside it.\n\n"
  printf "Options:\n"
  printf "  -h, --help                    Show this help message and exit.\n"
  printf "  -l, --login                   Login into the container after setup.\n"
  printf "  -n, --name CONTAINER_NAME     Name of the container to be initialized or reused."
  printf " By default '%s'.\n" "$_CONTAINER_NAME"
  exit 1
}

for arg in "$@"; do
  case $arg in
    -h|--help)
    shift
    usage
    ;;

    -l|--login)
    _LOGIN=1
    shift
    ;;

    -n|--name)
    shift
    _CONTAINER_NAME=$1
    shift
    ;;
  esac
done

function pullContainer() {
  docker pull debian:bullseye
  docker run -itd --name "$_CONTAINER_NAME" debian:bullseye
  docker cp . "$_CONTAINER_NAME":/shread

  docker exec "$_CONTAINER_NAME" \
    bash -c 'printf "deb http://deb.debian.org/debian bullseye main contrib non-free\ndeb-src http://deb.debian.org/debian bullseye main contrib non-free\n\n\ndeb http://deb.debian.org/debian bullseye-updates main contrib non-free\ndeb-src http://deb.debian.org/debian bullseye-updates main contrib non-free\n" > /etc/apt/sources.list'
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
    gnupg2 \
    gettext \
    python3 \
    python3-pip"
  docker exec "$_CONTAINER_NAME" \
    bash -c "apt-get upgrade"
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

set -e

if [ "$( docker container inspect -f '{{.State.Running}}' "$_CONTAINER_NAME" )" == "false" ]; then
  docker start "$_CONTAINER_NAME"
fi;

if [ "$_LOGIN" -eq 1 ]; then
  docker exec -it "$_CONTAINER_NAME" bash -c "cd /shread && /bin/bash"
fi;
