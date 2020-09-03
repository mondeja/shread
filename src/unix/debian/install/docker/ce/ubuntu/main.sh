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
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

INDENT_STRING=""

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}

if [ "$(command -v pacman)" = "" ]; then
  if [ -z "$_SCRIPT_FILENAME" ]; then
    filepath="src/unix/_/download/pacapt/main.sh"
    bash "$filepath" > /dev/null
  else
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
fi;

# prevent -> Warning: apt-key output should not be parsed (stdout is not a terminal)
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

sudo printf ""
printIndent
printf "%s...\n" "$_MSG_CHECKING_DOCKER_CE"

printIndent
# Comprobamos si ya tenemos la clave pública de los repositorios Docker
_APT_KEY_FOUND=$(apt-key list | grep "Docker Release")
# Si no tenemos la clave pública, la obtenemos
if [ "$_APT_KEY_FOUND" = "" ]; then
  printf "  %s" "$_MSG_SETTING_UP_PUBLIC_KEY"
  _GET_PUBLIC_GPG_KEY_STDERR=$(
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo apt-key add - 2>&1 > /dev/null)
  _GET_PUBLIC_GPG_KEY_EXIT_CODE=$?
  if [ $_GET_PUBLIC_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s" "$_MSG_ERROR_RETRIEVING_PUBLIC_DOCKER_REPOS_KEY" >&2
    printf " (https://download.docker.com/linux/ubuntu/gpg):\n" >&2
    printf "%s\n" "$_GET_PUBLIC_GPG_KEY_STDERR" >&2
    exit $_GET_PUBLIC_GPG_KEY_EXIT_CODE
  fi;
  sudo apt-key fingerprint 0EBFCD88
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "  %s" "$_MSG_CONFIGURED_PUBLIC_KEY_FOUND"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;

UBUNTU_RELEASE="$(lsb_release -cs)"
# Para la versión eoan aún no está disponible en AMD64, tiramos de disco
#   https://download.docker.com/linux/ubuntu/dists/
if [ "$UBUNTU_RELEASE" = "eoan" ]; then
  UBUNTU_RELEASE="disco"
fi;

ARCH="amd64"
case $(uname -m) in
    i386)   ARCH="386" ;;
    i686)   ARCH="386" ;;
    x86_64) ARCH="amd64" ;;
    arm)    dpkg --print-architecture | grep -q "arm64" && ARCH="arm64" || ARCH="arm" ;;
esac

_APT_REPO="deb [arch=$ARCH] https://download.docker.com/linux/ubuntu $UBUNTU_RELEASE stable"
_REPO_FOUND_ON_SOURCES=$(
  find /etc/apt/ -name "*.list" -print0 | \
  xargs -0 cat | \
  grep '^[[:space:]]*deb' | \
  grep "https://download.docker.com/linux/ubuntu")
printIndent
if [ "$_REPO_FOUND_ON_SOURCES" = "" ]; then
  printf "  %s" "$_MSG_ADDING_DOCKER_REPO"
  sudo add-apt-repository "$_APT_REPO" > /dev/null
  sudo pacman update > /dev/null
else
  printf "  %s" "$_MSG_DOCKER_REPO_FOUND"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

INSTALLATION_PACKAGES=(
  "docker-ce"
  "docker-ce-cli"
  "containerd.io"
)

printIndent
printf "  %s\n" "$_MSG_CHECKING_DOCKER_CE_PACKAGES"

for DEP in "${INSTALLATION_PACKAGES[@]}"; do
  printIndent
  printf "    %s" "$DEP"
  if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done


# Damos privilegios a todo el mundo al ejecutable del demonio Docker
sudo chmod 777 /var/run/docker.sock

unset APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE
