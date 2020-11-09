<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_SETTING_UP_NODEJS_ECOSYSTEM="Setting up NodeJS ecosystem..."
_MSG_CHECKING_BASE_DEPS="Checking base dependencies..."
_MSG_RETRIEVING_LAST_NODEJS_ABSOLUTE_VERSION="Retrieving lastest absolute NodeJS version..."
_MSG_INSTALLING_NODEJS="Installing NodeJS"
_MSG_ERROR_INSTALLING_NODEJS="An error happen installing NodeJS"
_MSG_ERROR_CODE="Error code"
_MSG_FOUND_NODEJS_INSTALLED="Found NodeJS installed in the system"
_MSG_DISTRIBUTION_NOT_SUPPORTED="Your distribution is not supported by this NodeJS installation script"
</%block>

<%block name="vars">
_VERSION=""
</%block>

<%block name="usage_opts">[-v VERSION]</%block>
<%block name="usage_desc">
  Installs a NodeJS version using 'github.com/nodesource/distributions' repositories as source.
</%block>
<%block name="usage_opts_desc">
  -v VERSION, --version VERSION     Major version of NodeJS to install or update to. As default the latest version available.</%block>

<%block name="argparse">
    -v|--version)
    shift
    _VERSION=$1
    shift
    ;;
</%block>

<%block name="script">
function installPacmanIfNotInstalled() {
  if [ "$(command -v pacman)" = "" ]; then
    if [ -z "$_SCRIPT_FILENAME" ]; then
      filepath="src/unix/_/download/pacapt/main.sh"
      bash "$filepath" > /dev/null
    else
      url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
      curl -sL "$url" | sudo bash - > /dev/null
    fi;
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
function retrieveLastNodeJSVersion() {
  LAST_NODEJS_VERSION="$(
    curl -sSL https://nodejs.org/dist/latest/SHASUMS256.txt \
    | head -n 1 | cut -d' ' -f3 | cut -d'-' -f2 | cut -d'v' -f2)"
}

function installNodeJS() {
  if [ "$_VERSION" = "" ]; then
    printf "  %s" "$_MSG_RETRIEVING_LAST_NODEJS_ABSOLUTE_VERSION"
    retrieveLastNodeJSVersion
    NODEJS_VERSION_TO_INSTALL="$LAST_NODEJS_VERSION"
    printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$NODEJS_VERSION_TO_INSTALL"
  else
    NODEJS_VERSION_TO_INSTALL="$_VERSION"
  fi;
  NODEJS_MAJOR_VERSION_TO_INSTALL="$(
    echo "$NODEJS_VERSION_TO_INSTALL" | cut -d"." -f1)"

  printf "  %s (v%s)..." "$_MSG_INSTALLING_NODEJS" "$NODEJS_VERSION_TO_INSTALL"

  INSTALL_NODEJS_STDERR=$(
    curl -sL "https://deb.nodesource.com/setup_$NODEJS_MAJOR_VERSION_TO_INSTALL.x" | \
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

function installNodeJSIfNotInstalled() {
  if [ "$(sudo pacman -Qi nodejs 2> /dev/null | grep Status)" = "Status: install ok installed" ] || [ -n "$(command -v node)" ]; then
    # NodeJS installed
    printf "  %s" "$_MSG_FOUND_NODEJS_INSTALLED"
    printf " (v%s)" "$(node -v | cut -c2-15)"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
    exit 0
  else
    # Install NodeJS
    installNodeJS
  fi;
}


function main() {
  sudo printf ""

  installPacmanIfNotInstalled
  getUnixDistro
  checkUnixDistro

  printIndent
  printf "%s\n" "$_MSG_SETTING_UP_NODEJS_ECOSYSTEM"
  installInstallationDependencies
  installNodeJSIfNotInstalled
}
</%block>
