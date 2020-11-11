<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
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
</%block>

<%block name="vars">
# PostgreSQL version to install
_VERSION=""

# "postgresql-$_VERSION-postgis" package should be installed?
_INCLUDE_POSTGIS=0

# Postgis version to install
_POSTGIS_VERSION=""

# Install PgAdmin?
_INCLUDE_PGADMIN=0

# Install Plpython3?
_INCLUDE_PLPYTHON3=0
</%block>

<%block name="usage_opts">[-pgv POSTGRESQL_VERSION] [-gis] [-gisv POSTGIS_VERSION] [-pgad] [-plpy3]</%block>
<%block name="usage_desc">
  Install PostgreSQL packages and, optionally, some additional packages from official sources.
  Also check if the postgres service is running and enables it, if not already, for execute at start.
</%block>
<%block name="usage_opts_desc">
  -pgv POSTGRESQL_VERSION, --postgresql-version POSTGRESQL_VERSION
                                    PostgreSQL version to install. If not provided, the latest version in repositories will be installed.
  -gis, --install-postgis           Install Postgis package correspondent to the PostgreSQL version to install.
  -gisv POSTGIS_VERSION, --postgis-version POSTGIS_VERSION
                                    Specifies what version of PostGIS will be installed. Only has effect passing '--install-postgis' option.
                                    If not provided, will be installed the latest available version of the package.
  -pgad, --install-pgadmin          Install latest version available of 'pgadmin' package.
  -plpy3, --install-plpython3       Install latest version available of 'postgresql-plpython3-*' package.
</%block>

<%block name="prepare">
_PGDG_SOURCES_LIST_FILEPATH="/etc/apt/sources.list.d/pgdg"
</%block>

<%block name="argparse">
    -pgv|--postgresql-version)
    shift
    _VERSION=$1
    shift
    ;;

    -gis|--install-postgis)
    _INCLUDE_POSTGIS=1
    shift
    ;;

    -gisv|--postgis-version)
    shift
    _POSTGIS_VERSION=$1
    shift
    ;;

    -pgad|--install-pgadmin)
    _INCLUDE_PGADMIN=1
    shift
    ;;

    -plpy3|--install-plpython3)
    _INCLUDE_PLPYTHON3=1
    shift
    ;;
</%block>

<%block name="script">
function installPacmanIfNotInstalled() {
  if [ "$(command -v pacman)" = "" ]; then
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
}

function installScriptDependencies() {
  installPacmanIfNotInstalled

  INSTALLATION_DEPENDENCIES=(
    "wget"
    "aptitude"
    "curl"
  )
  for DEP in "<%text>${INSTALLATION_DEPENDENCIES[@]}</%text>"; do
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
  done;
}

DEBIAN_VERSION=""
function getDebianVersion() {
  DEBIAN_VERSION="$(lsb_release -c -s)"
}

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
  printIndent
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

  printIndent
  printf "    %s" "$_MSG_UPDATING_PACKAGES"
  sudo pacman update > /dev/null
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function purgePreviousPackages() {
  printIndent
  printf "    %s" "$_MSG_REMOVING_PREVIOUS_PACKAGES"
  sudo pacman -Rns postgresql > /dev/null || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function cleanPreviousSources() {
  _PGDG_SOURCES_EXTS=(
    "list"
    "distUpgrade"
    "save"
  )

  for EXT in "<%text>${_PGDG_SOURCES_EXTS[@]}</%text>"; do
    if [ -f "<%text>${_PGDG_SOURCES_LIST_FILEPATH}.${EXT}</%text>" ]; then
      sudo rm -f "<%text>${_PGDG_SOURCES_LIST_FILEPATH}.${EXT}</%text>" > /dev/null || exit $?
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
    printIndent
    printf "  %s" "$_MSG_RETRIEVING_LASTEST_STABLE_VERSION"
    # Get latest stable version
    getLastestStablePostgresVersion
    _POSTGRES_VERSION_TO_INSTALL="$_LASTEST_STABLE_POSTGRES_VERSION"
    printf " (v%s)" "$_POSTGRES_VERSION_TO_INSTALL"
  else
    printIndent
    printf "  %s (%s)..." "$_MSG_CHECKING_AVAILABLE_VERSION" "$_VERSION"
    # Check if version to install is available
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
        sudo aptitude search "~n ^postgresql-<%text>${_POSTGRES_VERSION_TO_INSTALL}</%text>-postgis" | \
        grep -Eo " postgresql-<%text>${_POSTGRES_VERSION_TO_INSTALL}</%text>-postgis-[0-9]{1,3}.{0,1}[0-9]{0,3} " | \
        awk '{ print $1 }' | \
        sort --version-sort | \
        tail -n 1
      )
    else
      # Postgis manual version to install
      _POSTGIS_PACKAGE_EXISTS=$(
        sudo aptitude search "~n ^postgresql-<%text>${_POSTGRES_VERSION_TO_INSTALL}-postgis-${_POSTGIS_VERSION}</%text>"
      )
      if [ "$_POSTGIS_PACKAGE_EXISTS" = "" ]; then
        printf "\n%s (v%s)" "$_MSG_VERSION_OF_POSTGIS_TRYING_TO_INSTALL" "$_POSTGIS_VERSION" >&2
        printf " %s v%s" "$_MSG_DOESNT_EXISTS_AS_APT_PG_PACKAGE" "$_POSTGRES_VERSION_TO_INSTALL" >&2
        printf " (%s 'postgresql-%s-postgis%s')" "$_MSG_THE_PACKAGE" "$_POSTGRES_VERSION_TO_INSTALL" "$_POSTGIS_VERSION" >&2
        printf " %s\n" "$_MSG_DOESNT_EXISTS_IN_PG_OFFICIAL_REPOS" >&2
        printf "%s\n" "$_MSG_SPECIFY_AN_EXISTENT_VERSION" >&2
        sudo aptitude search "~n ^postgresql-<%text>${_POSTGRES_VERSION_TO_INSTALL}</%text>-postgis" >&2
        exit 1
      fi;
      _POSTGIS_PACKAGE="postgresql-<%text>${_POSTGRES_VERSION_TO_INSTALL}-postgis-${_POSTGIS_VERSION}</%text>"
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
      sudo aptitude search "~n ^postgresql-plpython3-<%text>${_POSTGRES_VERSION_TO_INSTALL}"</%text> | \
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

  printIndent
  printf "  %s\n" "$1"
  for PACKAGE in "<%text>${POSTGRES_PACKAGES[@]}</%text>"; do
    printIndent
    printf "    %s" "$PACKAGE"
    if [[ "$(sudo pacman -Qi "$PACKAGE" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      _APT_INSTALL_STDERR=$(sudo pacman -S -- -y "$PACKAGE" > /dev/null 2>&1)
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
  printIndent
  printf "  %s\n" "$_MSG_CHECKING_PG_SERVICE_CONFIG"
  printIndent

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

  printIndent
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
  printIndent
  printf "  %s\n" "$_MSG_INSTALLING_PG"

  # Check if the Debian system version is available at official Postgres repos
  getDebianVersion
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
  printIndent
  printf "%s\n" "$_MSG_CHEKING_PG_ENV"

  # Check if service exists
  checkPostgresqlServiceExists
  if [ $_POSTGRESQL_SERVICE_EXISTS -eq 0 ]; then
    # If not, install PostgreSQL
    installPostgreSQL
  else
    # If exists, obtain installed version
    getInstalledPostgresVersion
    _POSTGRES_VERSION_TO_INSTALL=$_POSTGRES_VERSION_INSTALLED

    # Check the rest of packages
    installPostgresPackages "$_MSG_CHECKING_PACKAGES"
  fi;

  checkPostgresqlServiceConfig
}
</%block>
