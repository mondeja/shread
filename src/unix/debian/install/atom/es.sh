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

printPrependedStdout
ATOM_BINARY_PATH=$(which atom)
if [ "$ATOM_BINARY_PATH" != "" ]; then
  ATOM_VERSION=$(
    apm -v | \
    sed -n 4p | \
    cut -d' ' -f2 | \
    sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")
  printf "Atom v$ATOM_VERSION ya se encuentra instalado"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else

  printf "Comprobando Atom...\n"
  sudo apt-get install -y -qqq wget > /dev/null

  printPrependedStdout
  printf "  Añadiendo repositorio..."
  SIGN_ATOM_GPG_KEY_STDERR=$(
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | \
    sudo apt-key add - 2>&1 > /dev/null)
  SIGN_ATOM_GPG_KEY_EXIT_CODE=$?
  if [ $SIGN_ATOM_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la clave pública de Atom:\n" >&2
    printf "$SIGN_ATOM_GPG_KEY_STDERR\n" >&2
    exit $SIGN_ATOM_GPG_KEY_EXIT_CODE
  fi;
  sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "  Actualizando paquetes..."
  sudo apt-get update -qqq > /dev/null
  printf " \e[92m\xE2\x9C\x94\e[39m\n"


  ATOM_VERSION=$(
    apt-cache show atom | \
    grep Version | \
    head -n 1 | \
    cut -d' ' -f2)
  if [ "$ATOM_VERSION" != "" ]; then
    printPrependedStdout
    printf "  Encontrado Atom v$ATOM_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;

  printPrependedStdout
  printf "  Ejecutando script de instalación..."
  INSTALL_ATOM_STDERR=$(sudo apt-get install atom -y -qqq 2>&1 > /dev/null)
  INSTALL_ATOM_EXIT_CODE=$?
  if [ "$INSTALL_ATOM_EXIT_CODE" -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error instalando Atom" >&2
    if [ "$ATOM_VERSION" != "" ]; then
      printf " (v$ATOM_VERSION)" >&2
    fi;
    printf ":\n$INSTALL_ATOM_STDERR\n" >&2
    exit $INSTALL_ATOM_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;
