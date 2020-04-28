#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
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
printf "Configurando ecosistema Redis...\n"
printPrependedStdout
printf "  Comprobando dependencias base...\n"

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
  printf "  Obteniendo última versión estable..."
  _REDIS_LASTEST_STABLE_VERSION=$(
    curl -sL http://download.redis.io/redis-stable/00-RELEASENOTES | \
      grep Released | \
      head -n 1 | \
      cut -d' ' -f2 | \
      tr -d '\n'
  )
  if [ "$_REDIS_LASTEST_STABLE_VERSION" = "" ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\nOcurrió un error obteniendo la última versión estable de" >&2
    printf " Redis del archivo 'http://download.redis.io/redis-stable/" >&2
    printf "00-RELEASENOTES'.\nVersiones encontradas:\n" >&2
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
  printf "  Descargando Redis (v$_REDIS_LASTEST_STABLE_VERSION)..."
  curl -sL http://download.redis.io/redis-stable.tar.gz \
    --output $1 || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function buildRedis() {
  # Construimos desde el código fuente
  printPrependedStdout
  printf "    Construyendo el código fuente...\n"
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
  printf "    Testeando la construcción...\n"
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
    printf "\nOcurrió un error al ejecutar los tests de construcción.\n" >&2
    exit 1
  fi;
}

function checkRedisServiceConfig() {
  # Comprobamos el servicio
  printPrependedStdout
  printf "  Comprobando la configuración del servicio 'redis'...\n"
  printPrependedStdout

  _REDIS_SERVICE_ENABLED_FOUND=$(
    systemctl list-unit-files | \
    grep enabled | \
    grep redis)
  if [ "$_REDIS_SERVICE_ENABLED_FOUND" = "" ]; then
    printf "    Habilitando..."
    _ENABLE_REDIS_SERVER_OUTPUT=$(
      sudo systemctl enable redis.service 2>&1 > /dev/null
    )
    _ENABLE_REDIS_SERVER_EXIT_CODE=$?
    if [ $_ENABLE_REDIS_SERVER_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "Ocurrió un error habilitando el servicio 'redis'.\n" >&2
      printf "Código de salida: $_ENABLE_REDIS_SERVER_EXIT_CODE\n" >&2
      printf "Error: $_ENABLE_REDIS_SERVER_OUTPUT\n" >&2
      exit $_ENABLE_REDIS_SERVER_EXIT_CODE
    fi;
  else
    printf "    Está habilitado"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printPrependedStdout

  _REDIS_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState redis | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ $_REDIS_SERVICE_STATUS != "active" ]; then
    printf "    Ejecutando..."
    sudo systemctl start redis > /dev/null
    _REDIS_SERVICE_STARTED=$?
    if [ $_REDIS_SERVICE_STARTED -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "El servicio 'redis' no ha podido ser iniciado.\n" >&2
      printf "Se encuentra en estado '$_REDIS_SERVICE_STATUS'.\n" >&2
      exit $_REDIS_SERVICE_STARTED
    fi;
  else
    printf "    Se encuentra en ejecución"
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
  printf "    Creando el servicio 'redis'..."

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

  printf "    Creando el usuario 'redis'..."
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
  printf "    Descomprimiendo..."
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
  printf "  Instalando Redis (v$_REDIS_LASTEST_STABLE_VERSION)...\n"
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
    printf "  Actualizando Redis (v$_REDIS_INSTALLED_VERSION ->"
    printf " v$_REDIS_LASTEST_STABLE_VERSION)...\n"
    installRedis /tmp/redis-stable.tar.gz
  else
    printPrependedStdout
    printf "  Encontrado Redis (v$_REDIS_INSTALLED_VERSION) instalado"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
fi;

# Comprobamos el servicio
checkRedisServiceConfig

cd $_ORIGIN_PWD
