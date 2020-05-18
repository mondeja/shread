#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_CHECKING_DOCKER_CE="Checking Docker Community Edition..."
_MSG_SETTING_UP_PUBLIC_KEY="Setting up public key..."
_MSG_ERROR_RETRIEVING_PUBLIC_DOCKER_REPOS_KEY="An error happen retrieving Docker repositories key"
_MSG_CONFIGURED_PUBLIC_KEY_FOUND="Public key configured found"
_MSG_ADDING_DOCKER_REPO="Adding Docker repository..."
_MSG_DOCKER_REPO_FOUND="Docker repository configured found"
_MSG_CHECKING_DOCKER_CE_PACKAGES="Checking Docker CE packages..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s" "$_MSG_EXECUTED_AS_SUPERUSER\n" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
        shift
        ;;
    esac
done

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

# prevent -> Warning: apt-key output should not be parsed (stdout is not a terminal)
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

sudo printf ""
printPrependedStdout
printf "$_MSG_CHECKING_DOCKER_CE...\n"

printPrependedStdout
# Comprobamos si ya tenemos la clave pública de los repositorios Docker
_APT_KEY_FOUND=$(apt-key list | grep "Docker Release")
# Si no tenemos la clave pública, la obtenemos
if [ "$_APT_KEY_FOUND" = "" ]; then
  printf "  $_MSG_SETTING_UP_PUBLIC_KEY"
  _GET_PUBLIC_GPG_KEY_STDERR=$(
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo apt-key add - 2>&1 > /dev/null)
  _GET_PUBLIC_GPG_KEY_EXIT_CODE=$?
  if [ $_GET_PUBLIC_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n$_MSG_ERROR_RETRIEVING_PUBLIC_DOCKER_REPOS_KEY" >&2
    printf " (https://download.docker.com/linux/ubuntu/gpg):\n" >&2
    printf "$_GET_PUBLIC_GPG_KEY_STDERR\n" >&2
    exit $_GET_PUBLIC_GPG_KEY_EXIT_CODE
  fi;
  sudo apt-key fingerprint 0EBFCD88
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "  $_MSG_CONFIGURED_PUBLIC_KEY_FOUND"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;

UBUNTU_RELEASE=$(lsb_release -cs)
# Para la versión eoan aún no está disponible en AMD64, tiramos de disco
#   https://download.docker.com/linux/ubuntu/dists/
if [ "$UBUNTU_RELEASE" = "eoan" ]; then
  UBUNTU_RELEASE=disco
fi;

_APT_REPO="deb [arch=amd64] https://download.docker.com/linux/ubuntu $UBUNTU_RELEASE stable"
_REPO_FOUND_ON_SOURCES=$(
  find /etc/apt/ -name *.list | \
  xargs cat | \
  grep ^[[:space:]]*deb | \
  grep "https://download.docker.com/linux/ubuntu")
printPrependedStdout
if [ "$_REPO_FOUND_ON_SOURCES" = "" ]; then
  printf "  $_MSG_ADDING_DOCKER_REPO"
  sudo add-apt-repository "$_APT_REPO" > /dev/null
  sudo apt-get update -y -qqq > /dev/null
else
  printf "  $_MSG_DOCKER_REPO_FOUND"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

INSTALLATION_PACKAGES=(
  "docker-ce"
  "docker-ce-cli"
  "containerd.io"
)

printPrependedStdout
printf "  $_MSG_CHECKING_DOCKER_CE_PACKAGES\n"

for DEP in "${INSTALLATION_PACKAGES[@]}"
do
  printPrependedStdout
  printf "    $DEP"
  if [[ "$(dpkg -s $DEP 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq $DEP > /dev/null
    if [ $? -ne 0 ]; then
      exit $?
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done


# Damos privilegios a todo el mundo al ejecutable del demonio Docker
sudo chmod 777 /var/run/docker.sock

unset APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE
