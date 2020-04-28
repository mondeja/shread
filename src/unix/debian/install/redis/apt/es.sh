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
printf "Configurando ecosistema Redis...\n"
printPrependedStdout
printf "  Comprobando paquetes...\n"
printPrependedStdout
printf "    redis-server"
if [[ "$(sudo dpkg -s redis-server 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq redis-server > /dev/null || exit $?
fi;
_REDIS_SERVER_VERSION=$(redis-server --version | cut -d'=' -f2 | cut -d' ' -f1)
printf " (v$_REDIS_SERVER_VERSION) \e[92m\xE2\x9C\x94\e[39m\n"

printPrependedStdout
printf "  Comprobando la configuración del servicio...\n"
printPrependedStdout
printf "    Está habilitado"
_REDIS_SERVICE_ENABLED_FOUND=$(systemctl list-unit-files | grep enabled | grep redis-server)
if [ "$_REDIS_SERVICE_ENABLED_FOUND" = "" ]; then
  _ENABLE_REDIS_SERVER_OUTPUT=$(
    sudo systemctl enable redis-server.service 2>&1 > /dev/null
  )
  _ENABLE_REDIS_SERVER_EXIT_CODE=$?
  if [ $_ENABLE_REDIS_SERVER_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "Ocurrió un error habilitando el servicio 'redis-server'.\n" >&2
    printf "Código de salida: $_ENABLE_REDIS_SERVER_EXIT_CODE\n" >&2
    printf "Error: $_ENABLE_REDIS_SERVER_OUTPUT\n" >&2
    exit $_ENABLE_REDIS_SERVER_EXIT_CODE
  fi;
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

printPrependedStdout
printf "    Se encuentra en ejecución"
_REDIS_SERVICE_STATUS=$(
  sudo systemctl show -p ActiveState redis-server | \
  cut -d'=' -f2 | \
  tr -d '\n')
if [ $_REDIS_SERVICE_STATUS != "active" ]; then
  sudo systemctl start redis-server > /dev/null
  _REDIS_SERVICE_STARTED=$?
  if [ $_REDIS_SERVICE_STARTED -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "El servicio 'redis-server' no ha podido ser iniciado.\n" >&2
    printf "Se encuentra en estado '$_REDIS_SERVICE_STATUS'.\n" >&2
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
