#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_SETTING_UP_NODEJS_ECOSYSTEM="Setting up NodeJS ecosystem..."
_MSG_CHECKING_BASE_DEPS="Checking base dependencies..."
_MSG_RETRIEVING_LAST_NODEJS_ABSOLUTE_VERSION="Retrieving lastest absolute NodeJS version..."
_MSG_THE_VERSION="The version"
_MSG_HAS_NOT_BEEN_FOUND_IN_OFFICIAL_NODEJS_REPOS="has not been found in official NodeJS repositories"
_MSG_INSTALLING_NODEJS="Installing NodeJS"
_MSG_ERROR_INSTALLING_NODEJS="An error happen installing NodeJS"
_MSG_ERROR_CODE="Error code"
_MSG_FOUND_NODEJS_INSTALLED="Found NodeJS installed in the system"
_MSG_DISTRIBUTION_NOT_SUPPORTED="Your distribution is not supported by this NodeJS installation script"
_MSG_CHECKING_NPM="Checking NPM..."
_MSG_ITS_INSTALLED="It's installed"
_MSG_UPDATING="Updating"
_MSG_ERROR_UPDATING_NPM="An error happen updating NPM to version"
_MSG_ITS_UPDATED="It's updated"
_MSG_CHECKING_YARN="Checking Yarn..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

# Versión de NodeJS a instalar. Si se deja vacía
#   se instalará la versión más reciente disponible
_VERSION=""

INDENT_STRING=""
for arg in "$@"; do
  case $arg in
    --version)
    shift
    _VERSION=$1
    shift
    ;;

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

INSTALLATION_DEPENDENCIES=(
  "curl"
  "debconf-utils"
)

for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
  fi;
done;

if [ -z "$UNIX_DISTRO" ]; then
  # shellcheck source=src/unix/_/util/get-distro/main.sh
  source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro/en.sh)
fi;

if [ "$(command -v debconf-get-selections)" != "" ]; then
  _ORIGINAL_DEBCONF_FRONTEND=$(
    sudo debconf-get-selections | \
    grep debconf/frontend | \
    awk '{print $4}')
  sudo sh -c "echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections"
fi;

CHECK_CURRENT_NODEJS_STABLE_VERSION_URL="https://nodejs.org/dist/latest/SHASUMS256.txt"
LATEST_NODEJS_MAJOR_VERSION=13
NODEJS_VERSION_TO_INSTALL="$LATEST_HARDCODED_NODEJS_VERSION"

if [ "$UNIX_DISTRO" = "ubuntu" ] || [ "$UNIX_DISTRO" = "debian" ]; then
  printIndent
  printf "%s\n" "$_MSG_SETTING_UP_NODEJS_ECOSYSTEM"

  printIndent
  printf "  %s\n" "$_MSG_CHECKING_BASE_DEPS"
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

  for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
    printIndent
    printf "    %s" "$DEP"
    if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done

  printIndent
	if [ "$(dpkg -s nodejs 2> /dev/null | grep Status)" != "Status: install ok installed" ]; then

    NODEJS_VERSION_TO_INSTALL=""
    NODEJS_VERSION_TO_INSTALL_MAJOR=""
    if [ "$_VERSION" = "" ]; then
      printf "  %s" "$_MSG_RETRIEVING_LAST_NODEJS_ABSOLUTE_VERSION"
      LATEST_NODEJS_VERSION=$(curl -s "$CHECK_CURRENT_NODEJS_STABLE_VERSION_URL" | \
        head -n 1 | \
        cut -d" " -f3 | \
        cut -d"-" -f2 | \
        cut -d"v" -f2)
      LATEST_NODEJS_MAJOR_VERSION="$(echo "$LATEST_NODEJS_VERSION" | cut -d"." -f1)"
      re='^[0-9]+$'
      if [[ $LATEST_NODEJS_MAJOR_VERSION =~ $re ]]; then
        url="https://deb.nodesource.com/setup_$LATEST_NODEJS_MAJOR_VERSION.x"
        if curl --output /dev/null --silent --fail -r 0-0 "$url"; then
          NODEJS_VERSION_TO_INSTALL=$LATEST_NODEJS_VERSION
          NODEJS_VERSION_TO_INSTALL_MAJOR=$LATEST_NODEJS_MAJOR_VERSION
        fi;
        printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$NODEJS_VERSION_TO_INSTALL"
      fi;
    else
      # Comprobamos si existe la versión que queremos instalar
      url="https://nodejs.org/dist/v$_VERSION"
      if ! curl --output /dev/null --silent --fail -r 0-0 "$url"; then
        printf "\n%s %s:" "$_MSG_THE_VERSION $_VERSION" "$_MSG_HAS_NOT_BEEN_FOUND_IN_OFFICIAL_NODEJS_REPOS" >&2
        printf " https://nodejs.org/dist/v%s 404" "$_VERSION" >&2
        exit 1
      fi;
      NODEJS_VERSION_TO_INSTALL_MAJOR="$(echo "$_VERSION" | cut -d"." -f1)"
      NODEJS_VERSION_TO_INSTALL="$_VERSION"
    fi;
    printf "  %s (v%s)..." "$_MSG_INSTALLING_NODEJS" "$NODEJS_VERSION_TO_INSTALL_MAJOR"
		INSTALL_NODEJS_STDERR=$(
      curl -sL "https://deb.nodesource.com/setup_$NODEJS_VERSION_TO_INSTALL_MAJOR.x" | \
      sudo bash \
      2>&1 > /dev/null)
    INSTALL_NODEJS_EXIT_CODE=$?
    if [ $INSTALL_NODEJS_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s:\n %s\n" "$_MSG_ERROR_INSTALLING_NODEJS" "$INSTALL_NODEJS_STDERR" >&2
      printf "%s: %s\n" "$_MSG_ERROR_CODE" "$INSTALL_NODEJS_EXIT_CODE" >&2
      exit $INSTALL_NODEJS_EXIT_CODE
    fi;
    sudo apt-get install -y -qqq nodejs > /dev/null
	else
    printf "  %s" "$_MSG_FOUND_NODEJS_INSTALLED"
		printf " (v%s)" "$(node -v | cut -c2-15)"
	fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf "%s (%s)" "$_MSG_DISTRIBUTION_NOT_SUPPORTED" "$UNIX_DISTRO" >&2
  printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
  exit 1
fi;

if [ -d "$HOME/.config" ]; then
  sudo chown -R "$USER:$(id -gn "$USER")" "$HOME/.config"
fi;

# Obtenemos la última versión de NPM
#  Comprobamos si NPM está instalado
printIndent
printf "  %s\n" "$_MSG_CHECKING_NPM"
printIndent
printf "    %s" "$_MSG_ITS_INSTALLED"
NPM_BINARY_FILEPATH="$(command -v npm)"
if [ "$NPM_BINARY_FILEPATH" != "" ]; then
  NPM_LATEST_VERSION="$(npm show npm dist-tags.latest --json | cut -d'"' -f2)"
  NPM_INSTALLED_VERSION="$(npm --version)"

  printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$NPM_INSTALLED_VERSION"

  printIndent
  if [ "$NPM_LATEST_VERSION" != "$NPM_INSTALLED_VERSION" ]; then
    printf "    %s (v%s -> v%s)..." "$_MSG_UPDATING" "$NPM_INSTALLED_VERSION" "$NPM_LATEST_VERSION"
    NPM_UPDATE_STDERR="$(sudo npm install --quiet --silent --no-progress -g npm@latest 2>&1 > /dev/null)"
    NPM_UPDATE_EXIT_CODE=$?
    if [ "$NPM_UPDATE_STDERR" != "" ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s:\n" "$_MSG_ERROR_UPDATING_NPM $NPM_LATEST_VERSION" >&2
      printf "%s" "$NPM_UPDATE_STDERR" >&2
      exit $NPM_UPDATE_EXIT_CODE
    fi;
  else
    printf "    %s" "$_MSG_ITS_UPDATED"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
else
  printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
fi;

USER_HOME="$(getent passwd "$SUDO_USER" | cut -d: -f6)"

function installOrUpdateYarn() {
  sudo rm -rf "$USER_HOME/.yarn"
  _=$(
    curl -sL https://yarnpkg.com/install.sh | \
    sudo -u "$SUDO_USER" /bin/bash - \
    2>&1 > /dev/null
  )

  # Exportamos el binario de yarn a la sesión actual
  if [ -f "$HOME/.bashrc" ]; then
    # shellcheck disable=SC1090
    source "$HOME/.bashrc"
  fi;
}

printIndent
printf "  %s\n" "$_MSG_CHECKING_YARN"
printIndent
printf "    %s" "$_MSG_ITS_INSTALLED"
YARN_BINARY_FILEPATH="$USER_HOME/.yarn/bin/yarn"
if [ ! -f "$YARN_BINARY_FILEPATH" ]; then
  installOrUpdateYarn
fi;

# Comprobamos que se encuentra actualizado
YARN_LATEST_VERSION=$(npm show yarn dist-tags.latest --json | cut -d'"' -f2)
YARN_INSTALLED_VERSION=$($YARN_BINARY_FILEPATH --version)

printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$YARN_INSTALLED_VERSION"

printIndent
if [ "$YARN_LATEST_VERSION" = "$YARN_INSTALLED_VERSION" ]; then
  printf "    %s \e[92m\xE2\x9C\x94\e[39m\n" "$_MSG_ITS_UPDATED"
else
  printf "    %s (v%s -> v%s)..." "$_MSG_UPDATING" "$YARN_INSTALLED_VERSION" "$YARN_LATEST_VERSION"
  installOrUpdateYarn
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
fi;

if [ "$(command -v debconf-get-selections)" != "" ]; then
  sudo sh -c "echo 'debconf debconf/frontend select $_ORIGINAL_DEBCONF_FRONTEND' | debconf-set-selections"
fi;
