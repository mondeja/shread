#!/bin/bash
# -*- ENCODING: UTF-8 -*-

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "Este script necesita ser ejecutado como superusuario.\n" >&2
  exit 1
fi;

# Indica si debemos atualizar las bibliotecas globales
#   recomendadas de Python3
_UPGRADE_PY3_GLOBAL_LIBS=1

_PREPEND_STDOUT_STRING=""

for arg in "$@"
do
    case $arg in
        --no-upgrade-py3-global-libs)
        _UPGRADE_PY3_GLOBAL_LIBS=0
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

if [ -z "$UNIX_DISTRO" ]; then
  if [[ "$(sudo dpkg -s curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq curl > /dev/null
  fi;
  source <(curl -sL https://softmond.gitlab.io/scripts/unix/_/util/get-distro.sh)
fi;

printPrependedStdout
printf "Configurando ecosistema Python3...\n"

printPrependedStdout
# Comprobamos si existe el binario `python3`
PY3_BINARY_FILEPATH=$(which python3)
if [ "$PY3_BINARY_FILEPATH" = "" ]; then
  # Python3 no está instalado
  _PYTHON_STABLE_PACKAGE_VERSION=$(apt-cache policy python3-dev | grep -Po "(\d+\.)+\d+" | head -n 1)
  printf "  Instalando paquete base"
  if [ "$_PYTHON_STABLE_PACKAGE_VERSION" != "" ]; then
	  printf " (v$_PYTHON_STABLE_PACKAGE_VERSION)"
  fi;
  printf "..."
	sudo apt-get install -y -qqq python3-dev > /dev/null
  _PYTHON_VERSION=$(echo $($PY3_BINARY_FILEPATH --version | cut -c7-12))
else
  _PYTHON_VERSION=$(echo $($PY3_BINARY_FILEPATH --version | cut -c7-12))
	printf "  Encontrado Python (v$_PYTHON_VERSION) instalado en el sistema"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

INSTALLATION_PACKAGES=(
  "python-dev"
  "python3-dev"
  "python-pip"
  "python3-pip"
  "python3-setuptools"
  "python3-testresources"
  "libxml2-utils"
  "python-lxml"
  "python3-lxml"
  "python-numpy"
  "python3-numpy"
)
if [ "$UNIX_DISTRO" = "ubuntu" ]; then
  UBUNTU_VERSION_CODENAME=$(printf \"$(lsb_release -rs | tr -d '\n'),$(lsb_release -cs | tr -d '\n')\" 2>&1)
  UBUNTU_VERSION=$(printf "$UBUNTU_VERSION_CODENAME" | cut -d',' -f1 | tr -d '"')
  UBUNTU_VERSION_MAJOR=$(printf "$UBUNTU_VERSION" | cut -d'.' -f1)
  UBUNTU_VERSION_MINOR=$(printf "$UBUNTU_VERSION" | cut -d'.' -f2)
  UBUNTU_VERSION_MINOR_LEADING_ZERO_STRIPPED=$(printf "$UBUNTU_VERSION_MINOR" | sed 's/^0*//')
  UBUNTU_CODENAME=$(printf "$UBUNTU_VERSION_CODENAME" | cut -d',' -f2)
  if [ $UBUNTU_VERSION_MAJOR -ge 18 ]; then
    INSTALLATION_PACKAGES+=(
      "python3-distutils"
    )
  fi;
fi;


printPrependedStdout
printf "  Comprobando paquetes de Python adicionales...\n"

for DEP in "${INSTALLATION_PACKAGES[@]}"
do
  printPrependedStdout
  printf "    $DEP"
  if [[ "$(dpkg -s $DEP 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq $DEP > /dev/null
    if [ $? -ne 0 ]; then
      exit $?
    fi;
  fi;
  _DEP_VERSION=$(apt-cache policy $DEP | grep -Po "(\d+\.)+\d+" | head -n 1)
  if [ "$_DEP_VERSION" != "" ]; then
    printf " (v$_DEP_VERSION)"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

# Damos permisos al directorio de caché de Pypi
if [ -d "~/.cache/pip/" ]; then
  _PIP_CACHE_FILEPATH="$USER_HOME/.cache/pip/"
  if [ -f "$_PIP_CACHE_FILEPATH" ]; then
    sudo chown -R $SUDO_USER $_PIP_CACHE_FILEPATH
  fi;
fi;

# Actualizamos PIP para Python2 a una versión compatible
sudo python2 -m pip install -qq pip==20.0.2

# Actualizamos PIP para Python3 usando 'ensurepip'.
sudo python3 -m pip install -qq python-dotenv

if [ $_UPGRADE_PY3_GLOBAL_LIBS -eq 1 ]; then

  printPrependedStdout
  printf "  Actualizando bibliotecas globales de Python3...\n"

  GLOBAL_RECOMMENDED_LIBRARIES=(
    "pip"
    "virtualenv"
    "setuptools"
    "testresources"
  )

  for LIB in "${GLOBAL_RECOMMENDED_LIBRARIES[@]}"
  do
    printPrependedStdout
    printf "    $LIB"

    # Comprobamos si está instalada localmente
    _GET_VERSION_EXEC_STR="
import sys;
try: import $LIB as l;
except ImportError as err: sys.exit(777);
print(l.__version__ if isinstance(l.__version__, str) else \
  '.'.join([str(v) for v in l.__version__][:3]), end='');
"
    _LIB_LOCAL_VERSION=$($PY3_BINARY_FILEPATH -c "$_GET_VERSION_EXEC_STR")
    _LIB_LOCAL_VERSION_EXIT_CODE=$?
    if [ $_LIB_LOCAL_VERSION_EXIT_CODE -eq 777 ]; then
      # Si no está instalado, la instalamos
    	sudo -H $PY3_BINARY_FILEPATH -m pip install -U --quiet $LIB
    else
      printf " ("
      if [ "$_LIB_LOCAL_VERSION" != "" ]; then
        printf "v$_LIB_LOCAL_VERSION"
      fi;
      # Si ya está instalada
        # Obtenemos la última versión en PyPi
      _LIB_LAST_PYPI_VERSION=$(
        xmllint --html --xpath "//a[last()]/text() " \
          <(curl -sL https://pypi.org/simple/$LIB/) | \
          grep -Po "(\d+\.)+\d+\w*")
        if [ "$_LIB_LAST_PYPI_VERSION" != "$_LIB_LOCAL_VERSION" ]; then
          if [ "$_LIB_LOCAL_VERSION" != "" ]; then
            printf " -> "
          fi;
          printf "v$_LIB_LAST_PYPI_VERSION)..."
          sudo -H $PY3_BINARY_FILEPATH -m pip install -U -qq $LIB==$_LIB_LAST_PYPI_VERSION
        else
          printf ")"
        fi;
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
fi;

if [ "$(which debconf-get-selections)" != "" ]; then
  sudo sh -c "echo 'debconf debconf/frontend select $_ORIGINAL_DEBCONF_FRONTEND' | debconf-set-selections"
fi;
