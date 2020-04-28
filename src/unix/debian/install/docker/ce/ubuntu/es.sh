#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
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
printf "Comprobando Docker Community Edition...\n"

printPrependedStdout
# Comprobamos si ya tenemos la clave pública de los repositorios Docker
_APT_KEY_FOUND=$(apt-key list | grep "Docker Release")
# Si no tenemos la clave pública, la obtenemos
if [ "$_APT_KEY_FOUND" = "" ]; then
  printf "  Configurando la clave pública..."
  _GET_PUBLIC_GPG_KEY_STDERR=$(
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo apt-key add - 2>&1 > /dev/null)
  _GET_PUBLIC_GPG_KEY_EXIT_CODE=$?
  if [ $_GET_PUBLIC_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la clave de los repositorios de Docker" >&2
    printf " (https://download.docker.com/linux/ubuntu/gpg):\n" >&2
    printf "$_GET_PUBLIC_GPG_KEY_STDERR\n" >&2
    exit $_GET_PUBLIC_GPG_KEY_EXIT_CODE
  fi;
  sudo apt-key fingerprint 0EBFCD88
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "  Encontrada la clave pública configurada \e[92m\xE2\x9C\x94\e[39m\n"
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
  printf "  Añadiendo repositorio de Docker..."
  sudo add-apt-repository "$_APT_REPO" > /dev/null
  sudo apt-get update -y -qqq > /dev/null
else
  printf "  Encontrado repositorio Docker configurado"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

INSTALLATION_PACKAGES=(
  "docker-ce"
  "docker-ce-cli"
  "containerd.io"
)

printPrependedStdout
printf "  Comprobando paquetes de Docker CE...\n"

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
