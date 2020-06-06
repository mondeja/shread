#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_ADDING_REPO="Adding repository..."
_MSG_ERROR_RETRIEVING_POSTGRESQL_PUBLIC_KEY="An error happen retrieving PostgreSQL public key"
_MSG_UPDATING_PACKAGES="Updating packages..."
_MSG_REMOVING_PREVIOUS_PACKAGES="Removing previous packages..."
_MSG_RETRIEVING_LASTEST_STABLE_VERSION="Retrieving lastest stable available version..."
_MSG_CHECKING_AVAILABLE_VERSION="Checking version available"
_MSG_VERSION_NOT_OFFICIALLY_AVAILABLE="Version not available at official PostgreSQL repositories"
_MSG_VERSION_OF_POSTGIS_TRYING_TO_INSTALL="The version of Postgis that you're trying to install"
_MSG_DOESNT_EXISTS_AS_APT_PG_PACKAGE="doesn't exists as APT package for PostgreSQL"
_MSG_THE_PACKAGE="the package"
_MSG_DOESNT_EXISTS_IN_PG_OFFICIAL_REPOS="doesn't exists in PostgreSQL official repositories."
_MSG_SPECIFY_AN_EXISTENT_VERSION="Specify an existent version between the next using the param '--postgis-version':"
_MSG_CHECKING_PG_SERVICE_CONFIG="Checking the configuration of the service 'postgresql'..."
_MSG_ENABLING="Enabling..."
_MSG_ITS_ENABLED="It's enabled"
_MSG_ERROR_ENABLING_PG_SERVICE="An error happen enabling 'postgresql' service."
_MSG_ERROR="Error"
_MSG_EXIT_CODE="Exit code"
_MSG_LAUNCHING="Launching..."
_MSG_PG_SERVICE_COULDNT_BE_STARTED="The 'postgresql' service couldn't be started."
_MSG_ITS_IN_STATE="It's on state"
_MSG_ITS_RUNNING="It's running"
_MSG_INSTALLING_PG="Installing PostgreSQL..."
_MSG_INSTALLING_PACKAGES="Installing packages..."
_MSG_CHEKING_PG_ENV="Checking PostgreSQL environment..."
_MSG_CHECKING_PACKAGES="Checking packages..."
_MSG_DISTRO_VERSION_NOT_SUPPORTED="Your version of Debian/Ubuntu is not supported by official PostgreSQL repositories"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

_PREPEND_STDOUT_STRING=""

# Indica la versión a instalar. Si es una cadena vacía, se obtendrá
#   la última versión disponible de los repositorios de PostgreSQL
_VERSION=""

# Indica si debemos incluir el paquete "postgresql-$_VERSION-postgis"
_INCLUDE_POSTGIS=0

# Indica la versión de Postgis a instalar. Si no se indica, se instalará
#   la última versión disponible en los repositorios
_POSTGIS_VERSION=""

# Indica si debemos incluir PgAdmin
_INCLUDE_PGADMIN=0

# Indica si debemos incliur Plpython3
_INCLUDE_PLPYTHON3=0

for arg in "$@"; do
  case $arg in
    --version)
    shift
    _VERSION=$1
    shift
    ;;

    --install-postgis)
    _INCLUDE_POSTGIS=1
    shift
    ;;

    --postgis-version)
    shift
    _POSTGIS_VERSION=$1
    shift
    ;;

    --install-pgadmin)
    _INCLUDE_PGADMIN=1
    shift
    ;;

    --install-plpython3)
    _INCLUDE_PLPYTHON3=1
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

INSTALLATION_DEPENDENCIES=(
  "wget"
  "aptitude"
)

for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
  if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
  fi;
done;

_PGDG_SOURCES_LIST_FILEPATH="/etc/apt/sources.list.d/pgdg"
DEBIAN_VERSION="$(lsb_release -c -s)"

function checkDebianVersionSupported() {
  DEBIAN_VERSION_SUPPORTED=0
  _GET_DEBIAN_VERSION_SUPPORTED=$(
    curl -sL http://apt.postgresql.org/pub/repos/apt/dists/ | \
    grep -o "$DEBIAN_VERSION-pgdg"
  )
  if [ "$_GET_DEBIAN_VERSION_SUPPORTED" != "" ]; then
    DEBIAN_VERSION_SUPPORTED=1
  fi;
}

function signSources() {
  printPrependedStdout
  printf "    %s" "$_MSG_ADDING_REPO"
  SIGN_PGDG_GPG_KEY_STDERR=$(
    wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
    sudo apt-key add - 2>&1 > /dev/null)
  SIGN_PGDG_GPG_KEY_EXIT_CODE=$?
  if [ $SIGN_PGDG_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s:\n" "$_MSG_ERROR_RETRIEVING_POSTGRESQL_PUBLIC_KEY" >&2
    printf "%s\n" "$SIGN_PGDG_GPG_KEY_STDERR" >&2
    exit $SIGN_PGDG_GPG_KEY_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "    %s" "$_MSG_UPDATING_PACKAGES"
  sudo apt-get update -qqq > /dev/null
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function purgePreviousPackages() {
  printPrependedStdout
  printf "    %s" "$_MSG_REMOVING_PREVIOUS_PACKAGES"
  sudo apt-get purge -y postgresql > /dev/null || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function cleanPreviousSources() {
  _PGDG_SOURCES_EXTS=(
    "list"
    "distUpgrade"
    "save"
  )

  for EXT in "${_PGDG_SOURCES_EXTS[@]}"
  do
    if [ -f "${_PGDG_SOURCES_LIST_FILEPATH}.${EXT}" ]; then
      sudo rm -f "${_PGDG_SOURCES_LIST_FILEPATH}.${EXT}" > /dev/null || exit $?
    fi;
  done
}

function createSourcesList() {
  touch "$_PGDG_SOURCES_LIST_FILEPATH.list"
  echo "deb http://apt.postgresql.org/pub/repos/apt/ $DEBIAN_VERSION-pgdg main" > \
    "$_PGDG_SOURCES_LIST_FILEPATH.list"
}

function checkPostgresqlServiceExists() {
  _POSTGRESQL_SERVICE_EXISTS=1
  if ! sudo systemctl status postgresql > /dev/null 2>&1; then
    _POSTGRESQL_SERVICE_EXISTS=0
  fi;
}

_LASTEST_STABLE_POSTGRES_VERSION=""
function getLastestStablePostgresVersion() {
  _LASTEST_STABLE_POSTGRES_VERSION=$(
    sudo aptitude search "~n ^postgresql" | \
    grep -Eo " postgresql-[0-9]{1,3}.{0,1}[0-9]{1,3} " | \
    awk '{ print $1 }' | \
    sort --version-sort | \
    tail -n 1 | \
    cut -d'-' -f2
  )
}

_POSTGRES_VERSION_TO_INSTALL=""
function getPostgresVersionToInstall() {
  if [ "$_VERSION" = "" ]; then
    printPrependedStdout
    printf "  %s" "$_MSG_RETRIEVING_LASTEST_STABLE_VERSION"
    # Obtenemos la úlima versión
    getLastestStablePostgresVersion
    _POSTGRES_VERSION_TO_INSTALL="$_LASTEST_STABLE_POSTGRES_VERSION"
    printf " (v%s)" "$_POSTGRES_VERSION_TO_INSTALL"
  else
    printPrependedStdout
    printf "  %s (%s)..." "$_MSG_CHECKING_AVAILABLE_VERSION" "$_VERSION"
    # Comprobamos si la versión a instalar se encuentra entre las disponibles
    _POSTGRES_VERSION_TO_INSTALL=$(
      sudo aptitude search "~n ^postgresql" | \
      grep -Eo " postgresql-[0-9]{1,3}.{0,1}[0-9]{1,3} " | \
      awk '{ print $1 }' | \
      grep -o "$_VERSION" | \
      tr -d '\n'
    )
    if [ "$_POSTGRES_VERSION_TO_INSTALL" = "" ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "    %s (%s).\n" "$_MSG_VERSION_NOT_OFFICIALLY_AVAILABLE" "$_VERSION" >&2
      exit 1
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

_POSTGRES_VERSION_INSTALLED=""
function getInstalledPostgresVersion() {
  _POSTGRES_VERSION_INSTALLED=$(
    psql --version | \
    cut -d' ' -f3 | \
    cut -d'.' -f1 || exit $?
  )
}

function installPostgresPackages() {
  POSTGRES_PACKAGES=(
    "postgresql-$_POSTGRES_VERSION_TO_INSTALL"
    "postgresql-client-$_POSTGRES_VERSION_TO_INSTALL"
    "postgresql-contrib-$_POSTGRES_VERSION_TO_INSTALL"
    "postgresql-server-dev-$_POSTGRES_VERSION_TO_INSTALL"
    "libpq-dev"
  )
  if [ $_INCLUDE_POSTGIS -eq 1 ]; then
    if [ "$_POSTGIS_VERSION" = "" ]; then
      _POSTGIS_PACKAGE=$(
        sudo aptitude search "~n ^postgresql-${_POSTGRES_VERSION_TO_INSTALL}-postgis" | \
        grep -Eo " postgresql-${_POSTGRES_VERSION_TO_INSTALL}-postgis-[0-9]{1,3}.{0,1}[0-9]{0,3} " | \
        awk '{ print $1 }' | \
        sort --version-sort | \
        tail -n 1
      )
    else
      # Versión manual de PostGIS a instalar
      _POSTGIS_PACKAGE_EXISTS=$(
        sudo aptitude search "~n ^postgresql-${_POSTGRES_VERSION_TO_INSTALL}-postgis-${_POSTGIS_VERSION}"
      )
      if [ "$_POSTGIS_PACKAGE_EXISTS" = "" ]; then
        printf "\n%s (v%s)" "$_MSG_VERSION_OF_POSTGIS_TRYING_TO_INSTALL" "$_POSTGIS_VERSION" >&2
        printf " %s v%s" "$_MSG_DOESNT_EXISTS_AS_APT_PG_PACKAGE" "$_POSTGRES_VERSION_TO_INSTALL" >&2
        printf " (%s 'postgresql-%s-postgis%s')" "$_MSG_THE_PACKAGE" "$_POSTGRES_VERSION_TO_INSTALL" "$_POSTGIS_VERSION" >&2
        printf " %s\n" "$_MSG_DOESNT_EXISTS_IN_PG_OFFICIAL_REPOS" >&2
        printf "%s\n" "$_MSG_SPECIFY_AN_EXISTENT_VERSION" >&2
        sudo aptitude search "~n ^postgresql-${_POSTGRES_VERSION_TO_INSTALL}-postgis" >&2
        exit 1
      fi;
      _POSTGIS_PACKAGE="postgresql-${_POSTGRES_VERSION_TO_INSTALL}-postgis-${_POSTGIS_VERSION}"
    fi;
    POSTGRES_PACKAGES+=(
      "$_POSTGIS_PACKAGE"
    )
  fi;
  if [ $_INCLUDE_PGADMIN -eq 1 ]; then
    _LASTEST_STABLE_PGADMIN_PACKAGE=$(
      sudo aptitude search "~n ^pgadmin" | \
      grep -Eo " pgadmin[0-9]{1,3}.{0,1}[0-9]{0,3} " | \
      awk '{ print $1 }' | \
      sort --version-sort | \
      tail -n 1
    )
    POSTGRES_PACKAGES+=(
      "$_LASTEST_STABLE_PGADMIN_PACKAGE"
    )
  fi;
  if [ $_INCLUDE_PLPYTHON3 -eq 1 ]; then
    _LASTEST_STABLE_PLPYTHON3_COMPATIBLE_PACKAGE=$(
      sudo aptitude search "~n ^postgresql-plpython3-${_POSTGRES_VERSION_TO_INSTALL}" | \
      head -n 1 | \
      grep -o " postgresql-plpython3-12" | \
      awk '{ print $1 }'
    )
    if [ "$_LASTEST_STABLE_PLPYTHON3_COMPATIBLE_PACKAGE" != "" ]; then
      POSTGRES_PACKAGES+=(
        "$_LASTEST_STABLE_PLPYTHON3_COMPATIBLE_PACKAGE"
      )
    fi;
  fi;

  printPrependedStdout
  printf "  %s\n" "$1"
  for PACKAGE in "${POSTGRES_PACKAGES[@]}"; do
    printPrependedStdout
    printf "    %s" "$PACKAGE"
    if [[ "$(dpkg -s "$PACKAGE" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      _APT_INSTALL_STDERR=$(
        sudo apt-get install -y -qqq "$PACKAGE" 2>&1
      )
      _APT_INSTALL_EXIT_CODE=$?
      if [ $_APT_INSTALL_EXIT_CODE -ne 0 ]; then
        printf "%s" "$_APT_INSTALL_STDERR" >&2
        exit $_APT_INSTALL_EXIT_CODE
      fi;
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}

function checkPostgresqlServiceConfig() {
  printPrependedStdout
  printf "  %s\n" "$_MSG_CHECKING_PG_SERVICE_CONFIG"
  printPrependedStdout

  _POSTGRESQL_SERVICE_ENABLED_FOUND=$(
    systemctl list-unit-files | \
    grep enabled | \
    grep postgresql)
  if [ "$_POSTGRESQL_SERVICE_ENABLED_FOUND" = "" ]; then
    printf "    %s" "$_MSG_ENABLING"
    _ENABLE_POSTGRESQL_SERVER_OUTPUT=$(
      sudo systemctl enable postgresql.service 2>&1 > /dev/null
    )
    _ENABLE_POSTGRESQL_SERVER_EXIT_CODE=$?
    if [ $_ENABLE_POSTGRESQL_SERVER_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "%s\n" "$_MSG_ERROR_ENABLING_PG_SERVICE" >&2
      printf "%s: %d\n" "$_MSG_EXIT_CODE" "$_ENABLE_POSTGRESQL_SERVER_EXIT_CODE" >&2
      printf "%s: %s\n" "$_MSG_ERROR" "$_ENABLE_POSTGRESQL_SERVER_OUTPUT" >&2
      exit $_ENABLE_POSTGRESQL_SERVER_EXIT_CODE
    fi;
  else
    printf "    %s" "$_MSG_ITS_ENABLED"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  _POSTGRESQL_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState postgresql | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ "$_POSTGRESQL_SERVICE_STATUS" != "active" ]; then
    printf "    %s" "$_MSG_LAUNCHING"
    sudo systemctl start postgresql > /dev/null
    _POSTGRESQL_SERVICE_STARTED=$?
    if [ $_POSTGRESQL_SERVICE_STARTED -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "%s\n" "$_MSG_PG_SERVICE_COULDNT_BE_STARTED" >&2
      printf "%s '%s'.\n" "$_MSG_ITS_IN_STATE" "$_POSTGRESQL_SERVICE_STATUS" >&2
      exit $_POSTGRESQL_SERVICE_STARTED
    fi;
  else
    printf "    %s" "$_MSG_ITS_RUNNING"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function installPostgreSQL() {
  printPrependedStdout
  printf "  %s\n" "$_MSG_INSTALLING_PG"

  # Comprobamos si la versión de Debian se encuentra
  #   disponible en los repositorios oficiales de PostreSQL
  checkDebianVersionSupported
  if [ $DEBIAN_VERSION_SUPPORTED -eq 0 ]; then
    printf "%s (%s)." "$_MSG_DISTRO_VERSION_NOT_SUPPORTED" "$DEBIAN_VERSION" >&2
    exit 1
  fi;

  cleanPreviousSources
  purgePreviousPackages
  createSourcesList
  signSources

  getPostgresVersionToInstall
  installPostgresPackages "$_MSG_INSTALLING_PACKAGES"
}

function main() {
  printPrependedStdout
  printf "%s\n" "$_MSG_CHEKING_PG_ENV"

  # Comprobamos si existe el servicio PostgreSQL
  checkPostgresqlServiceExists
  if [ $_POSTGRESQL_SERVICE_EXISTS -eq 0 ]; then
    # Si no existe el servicio, instalamos PostgreSQL
    installPostgreSQL
  else
    # Si ya existe
    #   Obtenemos la versión instalada
    getInstalledPostgresVersion
    _POSTGRES_VERSION_TO_INSTALL=$_POSTGRES_VERSION_INSTALLED

    #   Comprobamos el resto de paquetes
    installPostgresPackages "$_MSG_CHECKING_PACKAGES"
  fi;

  checkPostgresqlServiceConfig
}
main
