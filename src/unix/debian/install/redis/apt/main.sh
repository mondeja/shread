#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_SETTING_REDIS_ECOSYSTEM="Setting up Redis ecosystem..."
_MSG_CHECKING_PACKAGES="Checking packages..."
_MSG_CHECKING_SERVICE_CONFIG="Checking service configuration..."
_MSG_ITS_ENABLED="It's enabled"
_MSG_ERROR_ENABLING_SERVICE="An error happen enabling 'redis-server' service."
_MSG_EXIT_CODE="Exit code"
_MSG_ERROR="Error"
_MSG_ITS_RUNNING="It's running"
_MSG_SERVICE_COULDNT_BE_STARTED="The service 'redis-server' could not be started."
_MSG_ITS_ON_STATE="It's on state"

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

printPrependedStdout
printf "%s\n" "$_MSG_SETTING_REDIS_ECOSYSTEM"
printPrependedStdout
printf "  %s\n" "$_MSG_CHECKING_PACKAGES"
printPrependedStdout
printf "    redis-server"
if [[ "$(sudo dpkg -s redis-server 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq redis-server > /dev/null || exit $?
fi;
_REDIS_SERVER_VERSION=$(redis-server --version | cut -d'=' -f2 | cut -d' ' -f1)
printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$_REDIS_SERVER_VERSION"

printPrependedStdout
printf "  %s\n" "$_MSG_CHECKING_SERVICE_CONFIG"
printPrependedStdout
printf "    %s" "$_MSG_ITS_ENABLED"
_REDIS_SERVICE_ENABLED_FOUND=$(systemctl list-unit-files | grep enabled | grep redis-server)
if [ "$_REDIS_SERVICE_ENABLED_FOUND" = "" ]; then
  _ENABLE_REDIS_SERVER_OUTPUT=$(
    sudo systemctl enable redis-server.service 2>&1 > /dev/null
  )
  _ENABLE_REDIS_SERVER_EXIT_CODE=$?
  if [ $_ENABLE_REDIS_SERVER_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "%s\n" "$_MSG_ERROR_ENABLING_SERVICE" >&2
    printf "%s: %s\n" "$_MSG_EXIT_CODE" "$_ENABLE_REDIS_SERVER_EXIT_CODE" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_ENABLE_REDIS_SERVER_OUTPUT" >&2
    exit $_ENABLE_REDIS_SERVER_EXIT_CODE
  fi;
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

printPrependedStdout
printf "    %s" "$_MSG_ITS_RUNNING"
_REDIS_SERVICE_STATUS=$(
  sudo systemctl show -p ActiveState redis-server | \
  cut -d'=' -f2 | \
  tr -d '\n')
if [ "$_REDIS_SERVICE_STATUS" != "active" ]; then
  sudo systemctl start redis-server > /dev/null
  _REDIS_SERVICE_STARTED=$?
  if [ $_REDIS_SERVICE_STARTED -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "%s\n" "$_MSG_SERVICE_COULDNT_BE_STARTED" >&2
    printf "%s '%s'.\n" "$_MSG_ITS_ON_STATE" "$_REDIS_SERVICE_STATUS" >&2
    exit $_REDIS_SERVICE_STARTED
  fi;
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

#  En Ubuntu 16.04, instalado:
#    - Cambiar archivo de configuración de redis:
#      "supervised no" -> "supervised systemd"
#    - Cambiar archivo de configuración del servicio:
#      "Type=forking" -> "Type=notify"

#- Luego de cambiar el archivo de configuración del servicio, ejecutar:
#      systemctl daemon-reload

#Archivo de configuración de servicio:
#  /etc/systemd/system/redis.service
#Archivo de configuración de redis:
#  /etc/redis/redis.conf
#Archivo de logs de redis:
#  /var/log/redis/redis-server.log
