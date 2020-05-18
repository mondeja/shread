#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_SETTING_REDIS_ECOSYSTEM="Setting up Redis ecosystem..."
_MSG_CHECKING_BASE_DEPENDENCIES="Checking base dependencies..."
_MSG_RETRIEVING_LASTEST_STABLE_VERSION="Retrieving lastest stable version..."
_MSG_ERROR_RETRIEVING_LASTEST_VERSION_FROM_FILE="An error happen retrieving lastest stable Redis version from file"
_MSG_VERSIONS_FOUND="Versions found:"
_MSG_DOWNLOADING_REDIS="Downloading Redis"
_MSG_BUILDING_SOURCE_CODE="Building source code..."
_MSG_TESTING_BUILD="Testing build..."
_MSG_ERROR_RUNNING_BUILD_TESTS="An error happen running build tests."
_MSG_CHECKING_SERVICE_CONFIG="Checking 'redis' service configuration..."
_MSG_ENABLING="Enabling..."
_MSG_ERROR_ENABLING_SERVICE="An error happen enabling 'redis' service."
_MSG_ERROR="Error"
_MSG_EXIT_CODE="Exit code"
_MSG_ITS_ENABLED="It's enabled"
_MSG_EXECUTING="Executing..."
_MSG_SERVICE_COULDNT_BE_STARTED="The 'redis' service could not be started."
_MSG_ITS_ON_STATE="It's on state"
_MSG_ITS_RUNNING="It's runnning"
_MSG_CREATING_SERVICE="Creating 'redis' service..."
_MSG_CREATING_USER="Creating 'redis' user..."
_MSG_UNZIPPING="Unzipping..."
_MSG_INSTALLING_REDIS="Installing Redis"
_MSG_UPDATING_REDIS="Updating Redis"
_MSG_FOUND_REDIS_INSTALLED="Found Redis installed"

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s" "$_MSG_EXECUTED_AS_SUPERUSER\n" >&2
  exit 1
fi;

_ORIGIN_PWD=$PWD

# Indica si debemos testear la construcción de redis
_TEST=0

_PREPEND_STDOUT_STRING=""
for arg in "$@"
do
    case $arg in
        --prepend-stdout)
        shift
        _PREPEND_STDOUT_STRING=$1
        shift
        ;;

        --test)
        _TEST=1
        shift
        ;;
    esac
done

function printPrependedStdout() {
  printf "%s" "$_PREPEND_STDOUT_STRING"
}

printPrependedStdout
printf "$_MSG_SETTING_REDIS_ECOSYSTEM\n"
printPrependedStdout
printf "  $_MSG_CHECKING_BASE_DEPENDENCIES\n"

INSTALLATION_DEPENDENCIES=(
  "build-essential"
  "tcl"
  "curl"
  "make"
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

# Obtención de la última versión estable de Redis
function getRedisServerLastestStableVersion() {
  printPrependedStdout
  printf "  $_MSG_RETRIEVING_LASTEST_STABLE_VERSION"
  _REDIS_LASTEST_STABLE_VERSION=$(
    curl -sL http://download.redis.io/redis-stable/00-RELEASENOTES | \
      grep Released | \
      head -n 1 | \
      cut -d' ' -f2 | \
      tr -d '\n'
  )
  if [ "$_REDIS_LASTEST_STABLE_VERSION" = "" ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n$_MSG_ERROR_RETRIEVING_LASTEST_VERSION_FROM_FILE" >&2
    printf " 'http://download.redis.io/redis-stable/" >&2
    printf "00-RELEASENOTES'.\n$_MSG_VERSIONS_FOUND\n" >&2
    printf "$(
      curl -sL http://download.redis.io/redis-stable/00-RELEASENOTES | \
      grep Released | \
      cut -d' ' -f2)\n" >&2
    exit 1
  fi;
  printf " (v$_REDIS_LASTEST_STABLE_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"
}

function downloadRedisLastestStableVersion() {
  printPrependedStdout
  printf "  $_MSG_DOWNLOADING_REDIS (v$_REDIS_LASTEST_STABLE_VERSION)..."
  curl -sL http://download.redis.io/redis-stable.tar.gz \
    --output $1 || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function buildRedis() {
  # Construimos desde el código fuente
  printPrependedStdout
  printf "    $_MSG_BUILDING_SOURCE_CODE\n"
  stdbuf -oL make 2>&1 |
    while IFS= read -r line
      do
        if [ "$(echo $line | cut -d' ' -f1)" = "gcc" ]; then
          file=$(
            awk -F'src/' '{ for(i=1;i<=NF;i++) print $i }' <<< "$line" | \
            tail -n 1
          )
          printPrependedStdout
          printf "      $file \e[92m\xE2\x9C\x94\e[39m\n"
        fi;
      done
}

function testRedisBuild() {
  printPrependedStdout
  printf "    $_MSG_TESTING_BUILD\n"
  _TESTS_TOTAL=""
  _TESTS_PASSED=48
  _TESTS_FINISHED=0
  stdbuf -oL make test 2>&1 |
    while IFS= read -r line
      do
        # Útil para debuging
        #echo "TESTS TOTAL: $_TESTS_TOTAL | TESTS PASSED: $_TESTS_PASSED"
        if [ $_TESTS_FINISHED -eq 0 ]; then
          if [ "$(echo ${line:3:1})" = "5" ]; then
            printf "      "
            _TEST_NUMBER_TOTAL=$(printf "${line:1:4}")
            if [ "$_TESTS_TOTAL" = "" ]; then
              let "_TESTS_TOTAL=$(
                printf "$_TEST_NUMBER_TOTAL" | \
                  cut -d'/' -f2 | \
                  tr -d '\n')"
            fi;
            printf "$_TEST_NUMBER_TOTAL "
            printf "$line" | cut -d' ' -f3 | tr -d '\n'
            printf " \e[92m\xE2\x9C\x94\e[39m\n"
            let "_TESTS_PASSED++"
          elif [ "$(echo ${line:3:1})" = "/" ]; then
            printf "      ${line:1:5} "
            printf "$line" | cut -d' ' -f3 | tr -d '\n'
            printf " \e[92m\xE2\x9C\x94\e[39m\n"
            let "_TESTS_PASSED++"
          else
            # Útil para debuging
            #echo "DEBUG: $line"
            #echo "DEBUG: ${line:3:1}"
            if [ "$_TESTS_TOTAL" != "" ]; then
              if [ $_TESTS_PASSED -ge $_TESTS_TOTAL ]; then
                _TESTS_FINISHED=1
              fi;
            fi;
          fi;
        fi;
      done
  if [ $_TESTS_PASSED -lt $_TESTS_TOTAL ]; then
    printf "\n$_MSG_ERROR_RUNNING_BUILD_TESTS\n" >&2
    exit 1
  fi;
}

function checkRedisServiceConfig() {
  # Comprobamos el servicio
  printPrependedStdout
  printf "  $_MSG_CHECKING_SERVICE_CONFIG\n"
  printPrependedStdout

  _REDIS_SERVICE_ENABLED_FOUND=$(
    systemctl list-unit-files | \
    grep enabled | \
    grep redis)
  if [ "$_REDIS_SERVICE_ENABLED_FOUND" = "" ]; then
    printf "    $_MSG_ENABLING"
    _ENABLE_REDIS_SERVER_OUTPUT=$(
      sudo systemctl enable redis.service 2>&1 > /dev/null
    )
    _ENABLE_REDIS_SERVER_EXIT_CODE=$?
    if [ $_ENABLE_REDIS_SERVER_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "$_MSG_ERROR_ENABLING_SERVICE\n" >&2
      printf "$_MSG_EXIT_CODE: $_ENABLE_REDIS_SERVER_EXIT_CODE\n" >&2
      printf "$_MSG_ERROR: $_ENABLE_REDIS_SERVER_OUTPUT\n" >&2
      exit $_ENABLE_REDIS_SERVER_EXIT_CODE
    fi;
  else
    printf "    $_MSG_ITS_ENABLED"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout

  _REDIS_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState redis | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ $_REDIS_SERVICE_STATUS != "active" ]; then
    printf "    $_MSG_EXECUTING"
    sudo systemctl start redis > /dev/null
    _REDIS_SERVICE_STARTED=$?
    if [ $_REDIS_SERVICE_STARTED -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "$_MSG_SERVICE_COULDNT_BE_STARTED\n" >&2
      printf "$_MSG_ITS_ON_STATE '$_REDIS_SERVICE_STATUS'.\n" >&2
      exit $_REDIS_SERVICE_STARTED
    fi;
  else
    printf "    $_MSG_ITS_RUNNING"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function configureRedis() {
  # Creamos directorio de configuración de Redis
  if [ -d "/etc/redis" ]; then
    sudo rm -rf /etc/redis
  fi;
  sudo mkdir /etc/redis || exit $?

  # Copiamos la configuración por defecto
  sudo cp /tmp/redis-stable/redis.conf /etc/redis || exit $?

  # Cambiamos directivas de configuración:
  #   supervised: no -> systemd
  sudo sed -i 's/^supervised no/supervised systemd/' /etc/redis/redis.conf || \
    exit $?
  #   dir: ./ -> /var/lib/redis
  sudo sed -i 's/^dir \.\//dir \/var\/lib\/redis/' /etc/redis/redis.conf || \
    exit $?

  # Creamos archivo de configuración de servicio del sistema
  printf "    $_MSG_CREATING_SERVICE"

  # Detenemos la versión del servicio anterior, si estaba en ejecución
  sudo systemctl daemon-reload
  _REDIS_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState redis | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ "$_REDIS_SERVICE_STATUS" != "inactive" ]; then
    sudo systemctl stop redis > /dev/null
  fi;

  if [ -f "/etc/systemd/system/redis.service" ]; then
    sudo rm -f /etc/systemd/system/redis.service
  fi;
  sudo touch /etc/systemd/system/redis.service
  sudo cat << EOF > /etc/systemd/system/redis.service
[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
EOF
  if [ $? -ne 0 ]; then
    exit $?
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printf "    $_MSG_CREATING_USER"
  # Comprobamos si existe el usuario 'redis'
  id -u redis > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    # Ya existe, lo eliminamos
    sudo userdel -f redis
  fi;
  # Creamos el usuario 'redis'
  sudo adduser --system --group --no-create-home redis > /dev/null || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  # Creamos el directorio de Redis
  if [ -d "/var/lib/redis" ]; then
    sudo rm -rf /var/lib/redis || exit $?
  fi;
  sudo mkdir /var/lib/redis || exit $?

  # Damos permisos al usuario en el directorio
  sudo chown redis:redis /var/lib/redis || exit $?

  # Los usuarios regulares no podrán acceder al diectorio
  sudo chmod 770 /var/lib/redis || exit $?

  sudo systemctl daemon-reload
}

function installRedis() {
  if [ -d "redis-stable" ]; then
    rm -rf redis-stable
  fi;

  # Descomprimimos el archivo descargado
  printPrependedStdout
  printf "    $_MSG_UNZIPPING"
  tar xzvf $1 > /dev/null || exit $?
  # Eliminamos el archivo comprimido
  rm -f $1 || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  # Entramos en el directorio de redis-stable
  cd redis-stable

  # Construimos el código fuente
  buildRedis

  # Testeamos la construcción (si es necesario)
  if [ $_TEST -eq 1 ]; then
    testRedisBuild
  fi;

  sudo make install > /dev/null 2>&1 || exit $?

  # Configuramos la instalación de Redis
  configureRedis
}

# Cambiamos al directorio temporal
cd /tmp

# Obtenemos la última versión estable disponible
getRedisServerLastestStableVersion

# Comprobamos si se encuentra instalado
_REDIS_BINARY_FILEPATH=$(which redis-server)
if [ "$_REDIS_BINARY_FILEPATH" = "" ]; then
  downloadRedisLastestStableVersion /tmp/redis-stable.tar.gz
  printPrependedStdout
  printf "  $_MSG_INSTALLING_REDIS (v$_REDIS_LASTEST_STABLE_VERSION)...\n"
  installRedis /tmp/redis-stable.tar.gz
else
  _REDIS_INSTALLED_VERSION=$(
    redis-server --version | \
    cut -d'=' -f2 | \
    cut -d' ' -f1)
  # Si la versión de Redis no es la última estable

  if [ "$_REDIS_INSTALLED_VERSION" != "$_REDIS_LASTEST_STABLE_VERSION" ]; then
    downloadRedisLastestStableVersion /tmp/redis-stable.tar.gz
    printPrependedStdout
    printf "  $_MSG_UPDATING_REDIS (v$_REDIS_INSTALLED_VERSION ->"
    printf " v$_REDIS_LASTEST_STABLE_VERSION)...\n"
    installRedis /tmp/redis-stable.tar.gz
  else
    printPrependedStdout
    printf "  $_MSG_FOUND_REDIS_INSTALLED (v$_REDIS_INSTALLED_VERSION)"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
fi;

# Comprobamos el servicio
checkRedisServiceConfig

cd $_ORIGIN_PWD
