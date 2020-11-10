<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_INSTALLING_CIRCLECI="Installing CircleCI"
_MSG_UPDATING_CIRCLECI="Updating CircleCI"
_MSG_FOUND_CIRCLECI_INSTALLED="CircleCI found installed"
</%block>

<%block name="usage_desc">
  Downloads or upgrade CircleCI binary.
</%block>

<%block name="script">
function installPacmanIfNotInstalled() {
  if [ "$(command -v pacman)" = "" ]; then
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
}

function installScriptDependencies() {
  installPacmanIfNotInstalled

  INSTALLATION_DEPENDENCIES=(
    "curl"
  )

  for DEP in "<%text>${INSTALLATION_DEPENDENCIES[@]}</%text>"; do
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
  done;
}

_CIRCLECI_BINARY_PATH=""
function getCircleCIBinaryPath(parameter) {
  _CIRCLECI_BINARY_PATH="$(command -v circleci)"
}

_CIRCLECI_LATEST_RELEASE_VERSION=""
function getCircleCILatestReleaseVersion() {
  _CIRCLECI_LATEST_RELEASE_VERSION=$(
    curl -sLI -o /dev/null -w '%{url_effective}' \
      https://github.com/CircleCI-Public/circleci-cli/releases/latest/  | \
      cut -d "v" -f2)
}

function downloadCircleCI() {
  curl -fLSs https://circle.ci/cli > /tmp/install-circleci.sh
  chmod +x /tmp/install-circleci.sh
  sudo DESTDIR="$1" VERSION="$2" bash /tmp/install-circleci.sh > /dev/null
  rm -f /tmp/install-circleci.sh
}

function main() {
  printIndent
  getCircleCIBinaryPath
  getCircleCILatestReleaseVersion

  if [ "$_CIRCLECI_BINARY_PATH" = "" ]; then
    printf "%s (v%s)..." "$_MSG_INSTALLING_CIRCLECI" "$_CIRCLECI_LATEST_RELEASE_VERSION"
    downloadCircleCI /usr/bin "$_CIRCLECI_LATEST_RELEASE_VERSION"
  else
    _CIRCLECI_INSTALLED_VERSION=$(
      "$_CIRCLECI_BINARY_PATH" version |  cut -d'+' -f1)

    if [ "$_CIRCLECI_INSTALLED_VERSION" != "$_CIRCLECI_LATEST_RELEASE_VERSION" ]; then
      printf "%s (v%s" "$_MSG_UPDATING_CIRCLECI" "$_CIRCLECI_INSTALLED_VERSION"
      printf " -> v%s)..." "$_CIRCLECI_LATEST_RELEASE_VERSION"
      sudo rm -f "$_CIRCLECI_BINARY_PATH"
      downloadCircleCI /usr/bin "$_CIRCLECI_LATEST_RELEASE_VERSION"
    else
      printf "%s (v%s)" "$_MSG_FOUND_CIRCLECI_INSTALLED" "$_CIRCLECI_INSTALLED_VERSION"
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}
</%block>
