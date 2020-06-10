#!/bin/bash
# -*- ENCODING: UTF-8 -*-

_MSG_EXECUTED_AS_SUPERUSER="This script needs to be executed as superuser."
_MSG_SETTING_UP_PY3_ECOSYSTEM="Setting up Python3 ecosystem..."
_MSG_INSTALLING_BASE_PACKAGE="Installing base package"
_MSG_FOUND_PY3_INSTALLED="Found Python3 installed in the system"
_MSG_CHECKING_ADDITIONAL_PY3_PACKAGES="Checking additional Python packages..."
_MSG_UPDATING_GLOBAL_PY3_LIBRARIES="Updating global Python3 libraries..."

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "%s\n" "$_MSG_EXECUTED_AS_SUPERUSER" >&2
  exit 1
fi;

# We must update global libraries recommended for Python:
#   - pip
#   - virtualenv
#   - setuptools
#   - testresources
_UPGRADE_PY3_GLOBAL_LIBS=1

INDENT_STRING=""

for arg in "$@"; do
  case $arg in
    --no-upgrade-py3-global-libs)
    _UPGRADE_PY3_GLOBAL_LIBS=0
    shift
    ;;

    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
  esac
done

function printPrependedStdout() {
  printf "%s" "$INDENT_STRING"
}

if [[ "$(sudo dpkg -s debconf-utils 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq debconf-utils > /dev/null
fi;
if [ "$(command -v debconf-get-selections)" != "" ]; then
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
  # shellcheck source=src/unix/_/util/get-distro/main.sh
  source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro.sh)
fi;

printPrependedStdout
printf "%s\n" "$_MSG_SETTING_UP_PY3_ECOSYSTEM"

printPrependedStdout
# Python3 binary exists?
PY3_BINARY_FILEPATH="$(command -v python3)"
if [ "$PY3_BINARY_FILEPATH" = "" ]; then
  # If not, Python might not be installed
  _PYTHON_STABLE_PACKAGE_VERSION=$(
    apt-cache policy python3-dev | grep -Po '(\d+\.)+\d+' | head -n 1)
  printf "  %s" "$_MSG_INSTALLING_BASE_PACKAGE"
  if [ "$_PYTHON_STABLE_PACKAGE_VERSION" != "" ]; then
	  printf " (v%s)" "$_PYTHON_STABLE_PACKAGE_VERSION"
  fi;
  printf "..."
	sudo apt-get install -y -qqq python3-dev > /dev/null
  _PYTHON_VERSION="$("$PY3_BINARY_FILEPATH" --version | cut -c7-12 | tr -d ' ')"
else
  _PYTHON_VERSION="$("$PY3_BINARY_FILEPATH" --version | cut -c7-12 | tr -d ' ')"
	printf "  %s (v%s)" "$_MSG_FOUND_PY3_INSTALLED" "$_PYTHON_VERSION"
fi;
printf " \e[92m\xE2\x9C\x94\e[39m\n"

INSTALLATION_PACKAGES=(
  "python-dev"
  "python3-dev"
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
  UBUNTU_VERSION_CODENAME=$(printf "%s" "$(lsb_release -rs | tr -d '\n'),$(lsb_release -cs | tr -d '\n')" 2>&1)
  UBUNTU_VERSION=$(printf "%s" "$UBUNTU_VERSION_CODENAME" | cut -d',' -f1 | tr -d '"')
  UBUNTU_VERSION_MAJOR=$(printf "%s" "$UBUNTU_VERSION" | cut -d'.' -f1)
  #UBUNTU_VERSION_MINOR=$(printf "%s" "$UBUNTU_VERSION" | cut -d'.' -f2)
  #UBUNTU_VERSION_MINOR_LEADING_ZERO_STRIPPED=$(printf "%s" "$UBUNTU_VERSION_MINOR" | sed 's/^0*//')
  #UBUNTU_CODENAME=$(printf "%s" "$UBUNTU_VERSION_CODENAME" | cut -d',' -f2)

  # python3-distutils is installed from bionic
  if [ "$UBUNTU_VERSION_MAJOR" -ge 18 ]; then
    INSTALLATION_PACKAGES+=(
      "python3-distutils"
    )
  fi;

  # python-pip is not included from focal
  if [ "$UBUNTU_VERSION_MAJOR" -lt 20 ]; then
    INSTALLATION_PACKAGES+=(
      "python-pip"
    )
  fi;
fi;

printPrependedStdout
printf "  %s\n" "$_MSG_CHECKING_ADDITIONAL_PY3_PACKAGES"

for DEP in "${INSTALLATION_PACKAGES[@]}"; do
  printPrependedStdout
  printf "    %s" "$DEP"
  if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq "$DEP" > /dev/null || exit $?
  fi;
  _DEP_VERSION=$(apt-cache policy "$DEP" | grep -Po "(\d+\.)+\d+" | head -n 1)
  if [ "$_DEP_VERSION" != "" ]; then
    printf " (v%s)" "$_DEP_VERSION"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
done

USER_HOME="$(getent passwd "$SUDO_USER" | cut -d: -f6)"

# Damos permisos al directorio de caché de Pypi
if [ -d "$HOME/.cache/pip/" ]; then
  _PIP_CACHE_FILEPATH="$USER_HOME/.cache/pip/"
  if [ -f "$_PIP_CACHE_FILEPATH" ]; then
    sudo chown -R "$SUDO_USER" "$_PIP_CACHE_FILEPATH"
  fi;
fi;

# Update PIP for Python2 to latest compatible version
if [ "$(command -v python2)" != "" ]; then
  sudo python2 -m pip install -qq pip==20.0.2
fi;

if [ $_UPGRADE_PY3_GLOBAL_LIBS -eq 1 ]; then
  printPrependedStdout
  printf "  %s\n" "$_MSG_UPDATING_GLOBAL_PY3_LIBRARIES"

  GLOBAL_RECOMMENDED_LIBRARIES=(
    "pip"
    "virtualenv"
    "setuptools"
    "testresources"
  )

  for LIB in "${GLOBAL_RECOMMENDED_LIBRARIES[@]}"; do
    printPrependedStdout
    printf "    %s" "$LIB"

    # Check if it's installed locally
    _GET_VERSION_EXEC_STR="
import sys;
try: import $LIB as l;
except ImportError as err: sys.exit(777);
print(l.__version__ if isinstance(l.__version__, str) else \
  '.'.join([str(v) for v in l.__version__][:3]), end='');
"
    _LIB_LOCAL_VERSION="$("$PY3_BINARY_FILEPATH" -c "$_GET_VERSION_EXEC_STR")"
    _LIB_LOCAL_VERSION_EXIT_CODE=$?
    if [ $_LIB_LOCAL_VERSION_EXIT_CODE -eq 777 ]; then
      # If not, install it
    	sudo -H "$PY3_BINARY_FILEPATH" -m pip install -U --quiet "$LIB"
    else
      printf " ("
      if [ "$_LIB_LOCAL_VERSION" != "" ]; then
        printf "v%s" "$_LIB_LOCAL_VERSION"
      fi;
      # If it's intalled, get latest version
      _LIB_LAST_PYPI_VERSION=$(
        xmllint --html --xpath "//a[last()]/text() " \
          <(curl -sL "https://pypi.org/simple/$LIB/") | \
          grep -Po "(\d+\.)+\d+\w*")
        if [ "$_LIB_LAST_PYPI_VERSION" != "$_LIB_LOCAL_VERSION" ]; then
          if [ "$_LIB_LOCAL_VERSION" != "" ]; then
            printf " -> "
          fi;
          printf "v%s)..." "$_LIB_LAST_PYPI_VERSION"
          _lib_equal_version="$LIB==$_LIB_LAST_PYPI_VERSION"
          sudo -H "$PY3_BINARY_FILEPATH" -m pip install -U -qq "$_lib_equal_version"
        else
          printf ")"
        fi;
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
fi;

if [ "$(command -v debconf-get-selections)" != "" ]; then
  sudo sh -c "echo 'debconf debconf/frontend select $_ORIGINAL_DEBCONF_FRONTEND' | debconf-set-selections"
fi;
