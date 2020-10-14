<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_CHECKING_PACAPT="Checking pacapt"
_MSG_RETRIEVING_LASTEST_VERSION="Retrieving latest version"
_MSG_INSTALLED="Installed"
_MSG_FOUND_INSTALLED="Found installed"
_MSG_UPDATED="Updated"
_MSG_DEST_EXISTS="Destination file exists"
_MSG_INDICATE_ANOTHER_DEST_WITH_PARAM="Indicate another destination for pacapt with parameter"
</%block>

<%block name="vars">
_DEST_PATH="/usr/local/bin/pacapt"
</%block>

<%block name="usage_opts">[--dest-path]</%block>
<%block name="usage_desc">
  Downloads pacapt.
</%block>
<%block name="usage_opts_desc">
  --dest-path                       Destination path of the downloaded binary. By default $_DEST_PATH
</%block>

<%block name="argparse">
    --dest-path)
    shift
    _DEST_PATH=$1
    shift
    ;;
</%block>

<%block name="script">
if [ ! -d "/usr/local/bin" ]; then
  if [ ! -d "/usr/bin" ]; then
    if [ ! -d "/bin" ]; then
      IFS=':' read -ra _PATH <<< "$PATH"
      for i in "<%text>${_PATH[@]}"</%text>; do
          _DEST_PATH="$i/pacapt"
          break
      done
    else
      _DEST_PATH="/bin/pacapt"
    fi;
  else
    _DEST_PATH="/usr/bin/pacapt"
  fi;
fi;

PACAPT_DOWNLOAD_LINK="https://raw.githubusercontent.com/icy/pacapt/ng/pacapt"
function getPacAptLastestVersion {
  rm -f /tmp/pacapt
  curl -sL "$PACAPT_DOWNLOAD_LINK" --output "/tmp/pacapt"
  _PACAPT_LASTEST_VERSION="$(< "/tmp/pacapt" grep " Version:" | cut -d' ' -f3)"
}

function getPacAptCurrentVersion {
  _PACAPT_CURRENT_VERSION=""
  PACAPT_BINARY_PATH="$(command -v pacapt)"
  if [ "$(command -v pacman)" = "" ] && [ "$(command -v pacapt)" != "" ]; then
    sudo cp "$(command -v pacapt)" "$(command -v pacman)"
    PACAPT_BINARY_PATH="$(command -v pacman)"
  fi;

  if [ -n "$PACAPT_BINARY_PATH" ]; then
    _PACAPT_CURRENT_VERSION=$(
      < "$PACAPT_BINARY_PATH" grep "Version:" | cut -d' ' -f3)
  fi;
}

function installPacApt {
  sudo cp "/tmp/pacapt" "$_DEST_PATH"
  sudo chmod 755 "$_DEST_PATH"
  if [ -f "/usr/local/bin/pacman" ]; then
    sudo rm -f "/usr/local/bin/pacman"
  fi;
  sudo ln -sv "$_DEST_PATH" "/usr/local/bin/pacman" > /dev/null || true
  if [ -f "/tmp/pacapt" ]; then
    rm -f "/tmp/pacapt"
  fi;
}

function main {
  # Check if destination file exists yet
  if [ -f "$_DEST_PATH" ] || [ -d "$_DEST_PATH" ]; then
    # If exists, check if is pacapt installation
    _PACAPT_GREP_SOURCE="$(< "$_DEST_PATH" grep ' Source' | cut -d' ' -f4)"
    if [ "$_PACAPT_GREP_SOURCE" != "http://github.com/icy/pacapt/" ]; then
      printf "%s (%s)\n" "$_MSG_DEST_EXISTS" "$_DEST_PATH" >&2
      printf "%s '--dest-path'.\n" "$_MSG_INDICATE_ANOTHER_DEST_WITH_PARAM" >&2
      exit 1
    fi;
  fi;

  printIndent
  printf "%s\n" "$_MSG_CHECKING_PACAPT..."

  printIndent
  printf "  %s" "$_MSG_RETRIEVING_LASTEST_VERSION..."
  getPacAptLastestVersion
  printf " (v%s)" "$_PACAPT_LASTEST_VERSION"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
  getPacAptCurrentVersion

  if [ -z "$_PACAPT_CURRENT_VERSION" ]; then
    installPacApt
    printf "  %s (v%s)" "$_MSG_INSTALLED" "$_PACAPT_LASTEST_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  elif [ "$_PACAPT_CURRENT_VERSION" = "$_PACAPT_LASTEST_VERSION" ]; then
    printIndent
    printf "  %s" "$_MSG_FOUND_INSTALLED"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  else
    printf "  %s (v%s -> v%s)" \
      "$_MSG_UPDATED" "$_PACAPT_CURRENT_VERSION" "$_PACAPT_LASTEST_VERSION"
    sudo rm -f "$PACAPT_BINARY_PATH"
    installPacApt
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}
</%block>
