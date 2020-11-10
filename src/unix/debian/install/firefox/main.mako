<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_CHECKING_MOZILLA_ECOSYSTEM="Checking Mozilla ecosystem..."
_MSG_FOUND_MOZILLA_FIREFOX_INSTALLED="Mozilla Firefox found installed in the system"
_MSG_INSTALLING_MOZILLA_FIREFOX_PACKAGES="Installing Mozilla Firefox packages"
_MSG_FOUND_CHECKODRIVER_INSTALLED="Geckodriver found installed in the system"
_MSG_INSTALLING_GECKODRIVER="Installing geckodriver..."
</%block>

<%block name="usage_opts">[-n]</%block>
<%block name="usage_desc">
  Installs Mozilla Firefox and geckodriver.
</%block>
<%block name="usage_opts_desc">
  -n, --no-geckodriver              If passed, doesn't installs geckodriver.
</%block>

<%block name="vars">
_INSTALL_GECKODRIVER=1
</%block>

<%block name="argparse">
    -n|--no-geckodriver)
    _INSTALL_GECKODRIVER=0
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

function installMozillaFirefox() {
  printIndent
  printf "  %s" "$_MSG_INSTALLING_MOZILLA_FIREFOX_PACKAGES"
  _MOZILLA_FIREFOX_PACKAGE_NAME="firefox"
  if [ "$UNIX_DISTRO" = "debian" ]; then
    _MOZILLA_FIREFOX_PACKAGE_NAME="firefox-esr"
  fi;
  _FIREFOX_LATEST_VERSION=$(pacman -Qi "$_MOZILLA_FIREFOX_PACKAGE_NAME" \
    | grep Version: | cut -d' ' -f2 | cut -d'+' -f1)
  printf " (v%s)...\n" "$_FIREFOX_LATEST_VERSION"

  _MOZILLA_FIREFOX_PACKAGES=("$_MOZILLA_FIREFOX_PACKAGE_NAME")
  if [ "$UNIX_DISTRO" = "debian" ]; then
    _MOZILLA_FIREFOX_PACKAGES+=("firefox-esr-l10n-es-es")
  fi;

  for PACKAGE in "<%text>${_MOZILLA_FIREFOX_PACKAGES[@]}</%text>"; do
    printIndent
    printf "    %s" "$PACKAGE"
    if [[ "$(sudo pacman -Qi "$PACKAGE" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$PACKAGE" > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}

function installGeckodriver() {
  printf "  %s" "$_MSG_INSTALLING_GECKODRIVER"
  sudo pacman -S -- -y firefox-geckodriver > /dev/null
}

function main() {
  printIndent
  printf "%s\n" "$_MSG_CHECKING_MOZILLA_ECOSYSTEM"

  installPacmanIfNotInstalled
  getUnixDistro

  if command -v firefox &> /dev/null; then
    _MOZILLA_FIREFOX_VERSION=$(
      sudo -u "$SUDO_USER" firefox --version | cut -d' ' -f3)
    printIndent
    printf "  %s (v%s)" "$_MSG_FOUND_MOZILLA_FIREFOX_INSTALLED" "$_MOZILLA_FIREFOX_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  else
    installMozillaFirefox
  fi;

  if [ $_INSTALL_GECKODRIVER -eq 1 ] && [ "$UNIX_DISTRO" != "debian" ]; then
    _GECKODRIVER_PATH="$(command -v geckodriver)"
    if [ "$_GECKODRIVER_PATH" != "" ]; then
      printIndent
      printf "  %s" "$_MSG_FOUND_CHECKODRIVER_INSTALLED"
      printf " (v%s)" "$(geckodriver --version | head -n1 | cut -d' ' -f2)"
    else
      installGeckodriver
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}
</%block>
