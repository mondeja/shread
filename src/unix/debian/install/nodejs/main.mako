<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_SETTING_UP_NODEJS_ECOSYSTEM="Setting up NodeJS ecosystem..."
_MSG_CHECKING_BASE_DEPS="Checking base dependencies..."
_MSG_RETRIEVING_LAST_NODEJS_ABSOLUTE_VERSION="Retrieving lastest absolute NodeJS version..."
_MSG_INSTALLING_NODEJS="Installing NodeJS"
_MSG_UNINSTALLING_NODEJS="Uninstalling NodeJS"
_MSG_ERROR_INSTALLING_NODEJS="An error happen installing NodeJS"
_MSG_ERROR_CODE="Error code"
_MSG_DISTRIBUTION_NOT_SUPPORTED="Your distribution is not supported by this NodeJS installation script"
_MSG_FOUND_NODEJS_INSTALLED="Found NodeJS installed"
_MSG_NODEJS_IS_UPDATED="NodeJS is updated"
_MSG_MUST_PASS_UPGRADE_OPTION="If you want to upgrade the NodeJS version installed you must pass the option '--upgrade' to this script."
_MSG_NODEJS_INSTALLED_BY_ANOTHER_SOURCE="NodeJS was installed by an unknown source and can not be upgraded."
_MSG_UNINSTALL_MANUALLY_NODEJS_BEFORE_RUN="Uninstall NodeJS manually before run this script."
</%block>

<%block name="vars">
_VERSION=""
_UPGRADE=0
</%block>

<%block name="usage_opts">[-v VERSION]</%block>
<%block name="usage_desc">
  Installs NodeJS using 'github.com/nodesource/distributions' repositories as source.
</%block>
<%block name="usage_opts_desc">
  -v VERSION, --version VERSION     Major version of NodeJS to install or update to. As default the latest version available.
  -u, --upgrade                     Upgrades NodeJS version if was previouly installed by the same source used by this script.
</%block>

<%block name="argparse">
    -v|--version)
    shift
    _VERSION=$1
    shift
    ;;
    -u|--upgrade)
    _UPGRADE=1
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
  if [ -z "$UNIX_DISTRO" ]; then
    # shellcheck disable=SC1091,SC1090
    source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro/en.sh)
  fi;
}

function checkUnixDistro() {
  if [ "$UNIX_DISTRO" != "ubuntu" ] && [ "$UNIX_DISTRO" != "debian" ]; then
    printf "%s (%s)" "$_MSG_DISTRIBUTION_NOT_SUPPORTED" "$UNIX_DISTRO" >&2
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    exit 1
  fi;
}

function installInstallationDependencies() {
  printIndent
  printf "  %s\n" "$_MSG_CHECKING_BASE_DEPS"
  INSTALLATION_DEPENDENCIES=(
    "build-essential"
    "gcc"
    "g++"
    "make"
    "apt-transport-https"
    "lsb-release"
    "gnupg"
  )

  for DEP in "<%text>${INSTALLATION_DEPENDENCIES[@]}</%text>"; do
    printIndent
    printf "    %s" "$DEP"
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}

LAST_NODEJS_VERSION=""
LAST_NODEJS_MAJOR_VERSION=""
function retrieveLastNodeJSVersion() {
  printf "  %s" "$_MSG_RETRIEVING_LAST_NODEJS_ABSOLUTE_VERSION"
  LAST_NODEJS_VERSION="$(
    curl -sSL https://nodejs.org/dist/latest/SHASUMS256.txt \
    | head -n 1 | cut -d' ' -f3 | cut -d'-' -f2 | cut -d'v' -f2)"
  LAST_NODEJS_MAJOR_VERSION="$(
    printf '%s' "$LAST_NODEJS_VERSION" | cut -d'.' -f1)"
  printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$LAST_NODEJS_VERSION"
}

# 1. Full version to install.
# 2. Major version to install.
function installNodeJS() {
  printIndent
  if [ -n "$1" ]; then
    printf "  %s (v%s)..." "$_MSG_INSTALLING_NODEJS" "$1"
  else
    printf "  %s (v%s)..." "$_MSG_INSTALLING_NODEJS" "$2"
  fi;

  INSTALL_NODEJS_STDERR=$(
    curl -sL "https://deb.nodesource.com/setup_$2.x" | \
    sudo bash \
    2>&1 > /dev/null)
  INSTALL_NODEJS_EXIT_CODE=$?
  if [ $INSTALL_NODEJS_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s:\n %s\n" "$_MSG_ERROR_INSTALLING_NODEJS" "$INSTALL_NODEJS_STDERR" >&2
    printf "%s: %s\n" "$_MSG_ERROR_CODE" "$INSTALL_NODEJS_EXIT_CODE" >&2
    exit $INSTALL_NODEJS_EXIT_CODE
  fi;
  sudo pacman -S -- -y nodejs > /dev/null || exit $?

  if [ -d "$HOME/.config" ]; then
    sudo chown -R "$USER:$(id -gn "$USER")" "$HOME/.config"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

_NODEJS_INSTALLED=0
function checkNodeJSInstalled() {
  if [ "$(sudo pacman -Qi nodejs 2> /dev/null | grep Status)" = "Status: install ok installed" ] || [ -n "$(command -v node)" ]; then
    _NODEJS_INSTALLED=1
  fi;
}

_NODEJS_INSTALLED_BY_NODESOURCE=0
function checkNodeJSNodesourceInstallation() {
  if [ -f "/etc/apt/sources.list.d/nodesource.list" ]; then
    _NODEJS_INSTALLED_BY_NODESOURCE=1
  fi;
}

_NODEJS_INSTALLED_VERSION=""
_NODEJS_INSTALLED_MAJOR_VERSION=""
function getNodeJSInstalledVersion() {
  _NODEJS_INSTALLED_VERSION="$(node -v | cut -d'v' -f2)"
  _NODEJS_INSTALLED_MAJOR_VERSION="$(printf "%s" "$_NODEJS_INSTALLED_VERSION" | cut -d'.' -f1)"
}

function uninstallNodesourceNodeJS() {
  printIndent
  printf "  %s (v%s)..." "$_MSG_UNINSTALLING_NODEJS" "$_NODEJS_INSTALLED_VERSION"
  echo y | sudo pacman -Rsn nodejs > /dev/null || exit $?

  # Remove nodesource sourcelists
  _PGDG_SOURCES_EXTS=(
    "list"
    "save"
    "distUpgrade"
  )
  for EXT in "<%text>${_PGDG_SOURCES_EXTS[@]}</%text>"; do
    sudo rm -f "/etc/apt/sources.list.d/nodesource.$EXT"
  done

  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}


function main() {
  sudo printf ""

  installPacmanIfNotInstalled
  getUnixDistro
  checkUnixDistro

  printIndent
  printf "%s\n" "$_MSG_SETTING_UP_NODEJS_ECOSYSTEM"
  installInstallationDependencies

  checkNodeJSInstalled
  if [ "$_NODEJS_INSTALLED" -eq 0 ]; then
    retrieveLastNodeJSVersion
    installNodeJS "$LAST_NODEJS_VERSION" "$LAST_NODEJS_MAJOR_VERSION"
  else
    getNodeJSInstalledVersion
    printIndent
    printf "  %s (v%s)" "$_MSG_FOUND_NODEJS_INSTALLED" "$_NODEJS_INSTALLED_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
    if [ -n "$_VERSION" ] && [ "$_VERSION" != "$_NODEJS_INSTALLED_MAJOR_VERSION" ] && [ "$_UPGRADE" -eq 0 ]; then
      printf "  %s\n" "$_MSG_MUST_PASS_UPGRADE_OPTION"
    fi;

    # If we shouldn't upgrade NodeJS version
    if [ "$_UPGRADE" -eq 0 ]; then
      exit 0
    fi;

    # If version not specified as script argument
    if [ -z "$_VERSION" ]; then
      retrieveLastNodeJSVersion
      _VERSION="$LAST_NODEJS_MAJOR_VERSION"
    fi;

    if [ "$_NODEJS_INSTALLED_MAJOR_VERSION" = "$_VERSION" ]; then
      printIndent
      printf "  %s (v%s)" "$_MSG_NODEJS_IS_UPDATED" "$_NODEJS_INSTALLED_VERSION"
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
      exit 0
    fi;

    # Check if NodeJS was installed by nodesource
    checkNodeJSNodesourceInstallation

    if [ "$_NODEJS_INSTALLED_BY_NODESOURCE" -eq 1 ]; then
      uninstallNodesourceNodeJS
      installNodeJS "$LAST_NODEJS_VERSION" "$_VERSION"
    else
      printIndent >&2
      printf "  %s" "$_MSG_NODEJS_INSTALLED_BY_ANOTHER_SOURCE" >&2
      printf " " >&2
      printf "%s" "$_MSG_UNINSTALL_MANUALLY_NODEJS_BEFORE_RUN" >&2
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    fi;
  fi;
}
</%block>
