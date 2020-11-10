<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_SETTING_UP_PY3_ECOSYSTEM="Setting up Python3 ecosystem..."
_MSG_INSTALLING_BASE_PACKAGE="Installing base package"
_MSG_FOUND_PY3_INSTALLED="Found Python3 installed in the system"
_MSG_CHECKING_ADDITIONAL_PY3_PACKAGES="Checking additional Python packages..."
_MSG_UPDATING_GLOBAL_PY3_LIBRARIES="Updating global Python3 libraries..."
</%block>

<%block name="usage_opts">[--no-upgrade-py3-global-libs]</%block>
<%block name="usage_desc">
  Installs some Python2 and Python3 APT packages if are not installed:

  - curl
  - python3-dev
  - python3-pip
  - python3-setuptools
  - python3-testresources
  - libxml2-utils
  - python-lxml
  - python3-lxml
  - python-numpy
  - python3-numpy

  + In Ubuntu >= 18 installs also:
    - python3-distutils
  + In Ubuntu < 20 installs also:
    - python-pip
    - python-dev
  + In Ubuntu >= 20 installs also:
    - python-dev-is-python2

  Also, installs or upgrade using PIP some Python3 packages globally (this step
  can be ignored using '--no-upgrade-py3-global-libs' option):

  - pip
  - virtualenv
  - setuptools
  - testresources
</%block>
<%block name="usage_opts_desc">
  --no-upgrade-py3-global-libs      Ignores the installation or upgrade of Python3 packages globally using PIP.
</%block>

<%block name="vars">
_UPGRADE_PY3_GLOBAL_LIBS=1
</%block>

<%block name="argparse">
    --no-upgrade-py3-global-libs)
    _UPGRADE_PY3_GLOBAL_LIBS=0
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

function getUnixDistro() {
  if [ -z "$UNIX_DISTRO" ] || [ -z "$UNIX_DISTRO_VERSION_NUMBER_MAJOR" ]; then
    # shellcheck disable=SC1091,SC1090
    source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro/en.sh)
  fi;
}

function installMainPython3AptPackage {
  printIndent
  # Python3 binary exists?
  PY3_BINARY_FILEPATH="$(command -v python3)"
  if [ "$PY3_BINARY_FILEPATH" = "" ]; then
    # If not, Python might not be installed
    _PYTHON_STABLE_PACKAGE_VERSION=$(
      pacman -Qi python3-dev | grep Version: | cut -d' ' -f2)
    printf "  %s" "$_MSG_INSTALLING_BASE_PACKAGE"
    if [ "$_PYTHON_STABLE_PACKAGE_VERSION" != "" ]; then
  	  printf " (v%s)" "$_PYTHON_STABLE_PACKAGE_VERSION"
    fi;
    printf "..."
    sudo pacman -S -- -y python3-dev > /dev/null || exit $?
    _PYTHON_VERSION="$("$PY3_BINARY_FILEPATH" --version | cut -c7-12 | tr -d ' ')"
  else
    _PYTHON_VERSION="$("$PY3_BINARY_FILEPATH" --version | cut -c7-12 | tr -d ' ')"
  	printf "  %s (v%s)" "$_MSG_FOUND_PY3_INSTALLED" "$_PYTHON_VERSION"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}


function discoverInstallationAptPackages {
  INSTALLATION_PACKAGES=(
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
    # python3-distutils is installed from bionic
    if [ "$UNIX_DISTRO_VERSION_NUMBER_MAJOR" -ge 18 ]; then
      INSTALLATION_PACKAGES+=(
        "python3-distutils"
      )
    fi;

    # python-pip is not included from focal
    if [ "$UNIX_DISTRO_VERSION_NUMBER_MAJOR" -lt 20 ]; then
      INSTALLATION_PACKAGES+=(
        "python-pip"
        "python-dev"
      )
    else
      INSTALLATION_PACKAGES+=(
        "python-dev-is-python2"
      )
    fi;
  fi;
}

function installPythonAdditionalAptPackages {
  printIndent
  printf "  %s\n" "$_MSG_CHECKING_ADDITIONAL_PY3_PACKAGES"

  for DEP in <%text>"${INSTALLATION_PACKAGES[@]}"</%text>; do
    printIndent
    printf "    %s" "$DEP"
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
    _DEP_VERSION=$(apt-cache policy "$DEP" | grep -Po "(\d+\.)+\d+" | head -n 1)
    if [ "$_DEP_VERSION" != "" ]; then
      printf " (v%s)" "$_DEP_VERSION"
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}

function configurePIP {
  USER_HOME="$(getent passwd "$SUDO_USER" | cut -d: -f6)"

  # Give permissions to PIP cache directory
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
}

function upgradeGlobalLibraries {
  if [ $_UPGRADE_PY3_GLOBAL_LIBS -eq 1 ]; then
    printIndent
    printf "  %s\n" "$_MSG_UPDATING_GLOBAL_PY3_LIBRARIES"

    GLOBAL_RECOMMENDED_LIBRARIES=(
      "pip"
      "virtualenv"
      "setuptools"
      "testresources"
    )

    for LIB in <%text>"${GLOBAL_RECOMMENDED_LIBRARIES[@]}"</%text>; do
      printIndent
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
}

function main {
  installPacmanIfNotInstalled
  getUnixDistro
  printIndent
  printf "%s\n" "$_MSG_SETTING_UP_PY3_ECOSYSTEM"
  installMainPython3AptPackage
  discoverInstallationAptPackages
  installPythonAdditionalAptPackages
  configurePIP
  upgradeGlobalLibraries
}
</%block>
