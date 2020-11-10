<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_CHECKING_DROPBOX_ENV="Checking Dropbox environment..."
_MSG_DROPBOX_FOUND_INSTALLED="Dropbox found installed in the system"
_MSG_CHECKING_IF_IS_UPDATED="Checking if is updated..."
_MSG_UPDATING_DROPBOX="Updating Dropbox"
_MSG_RETRIEVING_LAST_DROPBOX_VERSION="Retrieving last Dropbox version..."
_MSG_DOWNLOADING_DROPBOX="Downloading Dropbox"
_MSG_INSTALLING_DROPBOX="Installing Dropbox"
</%block>

<%block name="usage_opts">[-u]</%block>
<%block name="usage_desc">
  Installs and/or optionally updates Dropbox retrieving release package from their official repository.
</%block>
<%block name="usage_opts_desc">
  -u, --update                      Upgrades Dropbox to the latest release available.
</%block>

<%block name="vars">
_UPDATE=0
</%block>

<%block name="argparse">
    -u|--update)
    _UPDATE=1
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

function getDropboxLastVersion() {
  _DROPBOX_LAST_DEB=$(
    curl -sL https://linux.dropbox.com/packages/debian/ | \
    grep amd64.deb | \
    tail -n 1 | \
    cut -d'"' -f2)
  _DROPBOX_CMD_LAST_VERSION="$(echo "$_DROPBOX_LAST_DEB" | cut -d'_' -f2)"
}

function downloadDropbox() {
  _DROPBOX_DOWNLOAD_URL="https://linux.dropbox.com/packages/debian/$_DROPBOX_LAST_DEB"
  curl -sL -o "$_DROPBOX_LAST_DEB" "$_DROPBOX_DOWNLOAD_URL"
}

function installDropbox() {
  sudo dpkg -i "$_DROPBOX_LAST_DEB" > /dev/null || exit $?
  sudo rm -f "$_DROPBOX_LAST_DEB"
}

function main() {
  printIndent
  printf "%s\n" "$_MSG_CHECKING_DROPBOX_ENV"

  installPacmanIfNotInstalled

  _DROPBOX_BINARY_PATH="$(command -v dropbox)"
  if [ "$_DROPBOX_BINARY_PATH" != "" ]; then
    _DROPBOX_INSTALLED_VERSION=$(dropbox version | tail -n 1 | cut -d' ' -f5)
    printIndent
    printf "  %s (v%s)" "$_MSG_DROPBOX_FOUND_INSTALLED" \
      "$_DROPBOX_INSTALLED_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"

    if [ $_UPDATE -eq 0 ]; then
      exit 0
    fi;
    printIndent
    printf "  %s" "$_MSG_CHECKING_IF_IS_UPDATED"
    getDropboxLastVersion

    if [ "$_DROPBOX_CMD_LAST_VERSION" = "$_DROPBOX_INSTALLED_VERSION" ]; then
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
      exit 0
    else
      printf " \e[91m\xE2\x9C\x95\e[39m\n"

      printIndent
      printf "  %s (v%s -> v%s)..." "$_MSG_UPDATING_DROPBOX" \
        "$_DROPBOX_INSTALLED_VERSION" "$_DROPBOX_CMD_LAST_VERSION"
      downloadDropbox
      installDropbox
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
      exit 0
    fi;
  else
    printIndent
    printf "  %s" "$_MSG_RETRIEVING_LAST_DROPBOX_VERSION"
    getDropboxLastVersion

    printf " (v%s)" "$_DROPBOX_CMD_LAST_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"

    printIndent
    printf "  %s (v%s)..." "$_MSG_DOWNLOADING_DROPBOX" "$_DROPBOX_CMD_LAST_VERSION"
    downloadDropbox
    printf " \e[92m\xE2\x9C\x94\e[39m\n"

    printIndent
    printf "  %s (v%s)..." "$_MSG_INSTALLING_DROPBOX" "$_DROPBOX_CMD_LAST_VERSION"
    installDropbox
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}
</%block>
