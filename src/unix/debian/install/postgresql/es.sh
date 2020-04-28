#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
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

for arg in "$@"
do
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

if [[ "$(sudo dpkg -s wget 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq wget > /dev/null
fi;
if [[ "$(sudo dpkg -s aptitude 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq aptitude > /dev/null
fi;

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
  printf "    Añadiendo repositorio..."
  SIGN_PGDG_GPG_KEY_STDERR=$(
    wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
    sudo apt-key add - 2>&1 > /dev/null)
  SIGN_PGDG_GPG_KEY_EXIT_CODE=$?
  if [ $SIGN_PGDG_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la clave pública de PostgresSQL:\n" >&2
    printf "$SIGN_PGDG_GPG_KEY_STDERR\n" >&2
    exit $SIGN_PGDG_GPG_KEY_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout
  printf "    Actualizando paquetes..."
  sudo apt-get update -qqq > /dev/null
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function purgePreviousPackages() {
  printPrependedStdout
  printf "    Eliminando paquetes anteriores..."
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
  printf "deb http://apt.postgresql.org/pub/repos/apt/ $DEBIAN_VERSION-pgdg main\n" > \
    "$_PGDG_SOURCES_LIST_FILEPATH.list"
}

function checkPsqlInstalled() {
  _PSQL_BINARY_FILEPATH=$(which plsql)
  _PSQL_INSTALLED=0
  if [ "$_PSQL_BINARY_FILEPATH" != "" ]; then
    _PSQL_INSTALLED=1
  fi;
}

function checkPostgresqlServiceExists() {
  _POSTGRESQL_SERVICE_EXISTS=1
  sudo systemctl status postgresql > /dev/null 2>&1
  if [ $? -ne 0 ]; then
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
    printf "  Obteniendo última versión estable disponible..."
    # Obtenemos la úlima versión
    getLastestStablePostgresVersion
    _POSTGRES_VERSION_TO_INSTALL=$_LASTEST_STABLE_POSTGRES_VERSION
    printf " (v$_POSTGRES_VERSION_TO_INSTALL)"
  else
    printPrependedStdout
    printf "  Comprobando que la versión $_VERSION se encuentra disponible..."
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
      printf "    La versión $_VERSION de postgresql no se encuentra" >&2
      printf " disponible en los repositorios oficiales de PostgreSQL.\n" >&2
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
        printf "\nLa versión de Postgis que intentas instalar (v$_POSTGIS_VERSION)" >&2
        printf " no existe como paquete APT para PostgreSQL v$_POSTGRES_VERSION_TO_INSTALL" >&2
        printf " (el paquete 'postgresql-$_POSTGRES_VERSION_TO_INSTALL-postgis$_POSTGIS_VERSION')" >&2
        printf " no existe en los repositorios oficiales de PostgreSQL.\nEspecifica una versión" >&2
        printf " existente de entre las siguientes:\n" >&2
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
  printf "  $1 paquetes...\n"
  for PACKAGE in "${POSTGRES_PACKAGES[@]}"
  do
    printPrependedStdout
    printf "    $PACKAGE"
    if [[ "$(dpkg -s $PACKAGE 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      _APT_INSTALL_STDERR=$(
        sudo apt-get install -y -qqq $PACKAGE 2>&1
      )
      _APT_INSTALL_EXIT_CODE=$?
      if [ $_APT_INSTALL_EXIT_CODE -ne 0 ]; then
        printf "$_APT_INSTALL_STDERR" >&2
        exit $_APT_INSTALL_EXIT_CODE
      fi;
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}

function checkPostgresqlServiceConfig() {
  printPrependedStdout
  printf "  Comprobando la configuración del servicio 'postgresql'...\n"
  printPrependedStdout

  _POSTGRESQL_SERVICE_ENABLED_FOUND=$(
    systemctl list-unit-files | \
    grep enabled | \
    grep postgresql)
  if [ "$_POSTGRESQL_SERVICE_ENABLED_FOUND" = "" ]; then
    printf "    Habilitando..."
    _ENABLE_POSTGRESQL_SERVER_OUTPUT=$(
      sudo systemctl enable postgresql.service 2>&1 > /dev/null
    )
    _ENABLE_POSTGRESQL_SERVER_EXIT_CODE=$?
    if [ $_ENABLE_POSTGRESQL_SERVER_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "Ocurrió un error habilitando el servicio 'postgresql'.\n" >&2
      printf "Código de salida: $_ENABLE_POSTGRESQL_SERVER_EXIT_CODE\n" >&2
      printf "Error: $_ENABLE_POSTGRESQL_SERVER_OUTPUT\n" >&2
      exit $_ENABLE_POSTGRESQL_SERVER_EXIT_CODE
    fi;
  else
    printf "    Está habilitado"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout

  _POSTGRESQL_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState postgresql | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ $_POSTGRESQL_SERVICE_STATUS != "active" ]; then
    printf "    Ejecutando..."
    sudo systemctl start postgresql > /dev/null
    _POSTGRESQL_SERVICE_STARTED=$?
    if [ $_POSTGRESQL_SERVICE_STARTED -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "El servicio 'postgresql' no ha podido ser iniciado.\n" >&2
      printf "Se encuentra en estado '$_POSTGRESQL_SERVICE_STATUS'.\n" >&2
      exit $_POSTGRESQL_SERVICE_STARTED
    fi;
  else
    printf "    Se encuentra en ejecución"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function installPostgreSQL() {
  printPrependedStdout
  printf "  Instalando PostgreSQL...\n"

  # Comprobamos si la versión de Debian se encuentra
  #   disponible en los repositorios oficiales de PostreSQL
  checkDebianVersionSupported
  if [ $DEBIAN_VERSION_SUPPORTED -eq 0 ]; then
    printf "Tu versión de Debian/Ubuntu ($DEBIAN_VERSION) no está" >&2
    printf " soportada por los repositorios oficiales de PostgreSQL." >&2
    exit 1
  fi;

  cleanPreviousSources
  purgePreviousPackages
  createSourcesList
  signSources

  getPostgresVersionToInstall
  installPostgresPackages "Instalando"
}

function main() {
  printPrependedStdout
  printf "Comprobando entorno PostgreSQL...\n"

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
    installPostgresPackages "Comprobando"
  fi;

  checkPostgresqlServiceConfig
}
main
