#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

# Versión de NodeJS a instalar. Si se deja vacía
#   se instalará la versión más reciente disponible
_VERSION=""

_PREPEND_STDOUT_STRING=""
for arg in "$@"
do
    case $arg in
        --version)
        shift
        _VERSION=$1
        shift
        ;;

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

if [ -z "$UNIX_DISTRO" ]; then
  if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq curl > /dev/null
  fi;
  source <(curl -sL https://softmond.gitlab.io/scripts/unix/_/util/get-distro.sh)
fi;

if [[ "$(sudo dpkg -s debconf-utils 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq debconf-utils > /dev/null
fi;
if [ "$(which debconf-get-selections)" != "" ]; then
  _ORIGINAL_DEBCONF_FRONTEND=$(
    sudo debconf-get-selections | \
    grep debconf/frontend | \
    awk '{print $4}')
  sudo sh -c "echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections"
fi;

CHECK_CURRENT_NODEJS_STABLE_VERSION_URL=https://nodejs.org/dist/latest/SHASUMS256.txt
LATEST_NODEJS_MAJOR_VERSION=13
NODEJS_VERSION_TO_INSTALL=$LATEST_HARDCODED_NODEJS_VERSION

if [ -z "$UNIX_DISTRO" ]; then
  echo empty
  if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq curl > /dev/null
  fi;
  source <(curl -sL https://softmond.gitlab.io/scripts/unix/_/util/get-distro.sh)
fi;

if [ "$UNIX_DISTRO" = "ubuntu" ] || [ "$UNIX_DISTRO" = "debian" ]; then
  printPrependedStdout
  printf "Configurando ecosistema NodeJS...\n"

  printPrependedStdout
  printf "  Comprobando dependencias base...\n"
  INSTALLATION_DEPENDENCIES=(
    "build-essential"
    "gcc"
    "g++"
    "make"
    "apt-transport-https"
    "lsb-release"
    "curl"
    "gnupg"
  )

  for DEP in "${INSTALLATION_DEPENDENCIES[@]}"
  do
    printPrependedStdout
    printf "    $DEP"
    if [[ "$(dpkg -s $DEP 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo apt-get install -y -qqq $DEP > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done

  printPrependedStdout
	if [ "$(dpkg -s nodejs 2> /dev/null | grep Status)" != "Status: install ok installed" ]; then

    NODEJS_VERSION_TO_INSTALL=""
    NODEJS_VERSION_TO_INSTALL_MAJOR=""
    if [ "$_VERSION" = "" ]; then
      printf "  Buscando última versión absoluta de NodeJS..."
      LATEST_NODEJS_VERSION=$(curl -s $CHECK_CURRENT_NODEJS_STABLE_VERSION_URL | \
        head -n 1 | \
        cut -d" " -f3 | \
        cut -d"-" -f2 | \
        cut -d"v" -f2)
      LATEST_NODEJS_MAJOR_VERSION="$(echo $LATEST_NODEJS_VERSION | cut -d"." -f1)"
      re='^[0-9]+$'
      if [[ $LATEST_NODEJS_MAJOR_VERSION =~ $re ]]; then
        url=https://deb.nodesource.com/setup_$LATEST_NODEJS_MAJOR_VERSION.x
        if curl --output /dev/null --silent --fail -r 0-0 "$url"; then
          NODEJS_VERSION_TO_INSTALL=$LATEST_NODEJS_VERSION
          NODEJS_VERSION_TO_INSTALL_MAJOR=$LATEST_NODEJS_MAJOR_VERSION
        fi;
        printf " (v$NODEJS_VERSION_TO_INSTALL) \e[92m\xE2\x9C\x94\e[39m\n"
      fi;
    else
      # Comprobamos si existe la versión que queremos instalar
      url="https://nodejs.org/dist/v$_VERSION"
      if ! curl --output /dev/null --silent --fail -r 0-0 "$url"; then
        printf "\nLa versión $_VERSION no se encuentra en los repositorios" >&2
        printf " oficiales de NodeJS: https://nodejs.org/dist/v$_VERSION 404" >&2
        exit 1
      fi;
      NODEJS_VERSION_TO_INSTALL_MAJOR="$(echo $_VERSION | cut -d"." -f1)"
      NODEJS_VERSION_TO_INSTALL=$_VERSION
    fi;
    printf "  Instalando NodeJS (v$NODEJS_VERSION_TO_INSTALL_MAJOR)..."
		INSTALL_NODEJS_STDERR=$(
      curl -sL https://deb.nodesource.com/setup_$NODEJS_VERSION_TO_INSTALL_MAJOR.x | \
      sudo bash \
      2>&1 > /dev/null)
    INSTALL_NODEJS_EXIT_CODE=$?
    if [ $INSTALL_NODEJS_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\nOcurrió un error instalando NodeJS:\n $INSTALL_NODEJS_STDERR\n" >&2
      printf "Código de error: $INSTALL_NODEJS_EXIT_CODE\n" >&2
      exit $INSTALL_NODEJS_EXIT_CODE
    fi;
    sudo apt-get install -y -qqq nodejs > /dev/null
	else
		printf "  Encontrado NodeJS v$(echo $(node -v) | cut -c2-15) instalado"
	fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "Tu distribución ($UNIX_DISTRO) no está soportada por este script" >&2
  printf " de instalación de NodeJS" >&2
  printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
  exit 1
fi;

if [ -d "$HOME/.config" ]; then
  sudo chown -R $USER:$(id -gn $USER) $HOME/.config
fi;

# Obtenemos la última versión de NPM
#  Comprobamos si NPM está instalado
printPrependedStdout
printf "  Comprobando NPM...\n"
printPrependedStdout
printf "    Está instalado"
NPM_BINARY_FILEPATH=$(which npm)
if [ "$NPM_BINARY_FILEPATH" != "" ]; then


  NPM_LATEST_VERSION=$(npm show npm dist-tags.latest --json | cut -d'"' -f2)
  NPM_INSTALLED_VERSION=$(npm --version)

  printf " (v$NPM_INSTALLED_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  if [ "$NPM_LATEST_VERSION" != "$NPM_INSTALLED_VERSION" ]; then
    printf "    Actualizando (v$NPM_INSTALLED_VERSION -> v$NPM_LATEST_VERSION)..."
    NPM_UPDATE_STDERR=$(sudo npm install --quiet --silent --no-progress -g npm@latest 2>&1 > /dev/null)
    NPM_UPDATE_EXIT_CODE=$?
    if [ "$NPM_UPDATE_STDERR" != "" ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\nOcurrió un error actualizando NPM a la versión $NPM_LATEST_VERSION:\n" >&2
      printf "$NPM_UPDATE_STDERR" >&2
      exit $NPM_UPDATE_EXIT_CODE
    fi;
  else
    printf "    Está actualizado"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
fi;

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

function installOrUpdateYarn() {
  sudo rm -rf $USER_HOME/.yarn
  _YARN_INSTALL_SCRIPT_OUTPUT=$(
    curl -sL https://yarnpkg.com/install.sh | \
    sudo -u $SUDO_USER /bin/bash - \
    2>&1 > /dev/null
  )

  # Exportamos el binario de yarn a la sesión actual
  if [ -f "~/.bashrc" ]; then
    source ~/.bashrc
  fi;
}

printPrependedStdout
printf "  Comprobando Yarn...\n"
printPrependedStdout
printf "    Está instalado"
YARN_BINARY_FILEPATH=$USER_HOME/.yarn/bin/yarn
if [ ! -f "$YARN_BINARY_FILEPATH" ]; then
  installOrUpdateYarn
fi;

# Comprobamos que se encuentra actualizado
YARN_LATEST_VERSION=$(npm show yarn dist-tags.latest --json | cut -d'"' -f2)
YARN_INSTALLED_VERSION=$($YARN_BINARY_FILEPATH --version)

printf " (v$YARN_INSTALLED_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"

printPrependedStdout
if [ "$YARN_LATEST_VERSION" = "$YARN_INSTALLED_VERSION" ]; then
  printf "    Está actualizado \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "    Actualizando (v$YARN_INSTALLED_VERSION -> v$YARN_LATEST_VERSION)..."
  installOrUpdateYarn
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;

if [ "$(which debconf-get-selections)" != "" ]; then
  sudo sh -c "echo 'debconf debconf/frontend select $_ORIGINAL_DEBCONF_FRONTEND' | debconf-set-selections"
fi;
