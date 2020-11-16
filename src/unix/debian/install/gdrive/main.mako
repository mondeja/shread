<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_URL="URL"
_MSG_ERROR="Error"
_MSG_ERROR_CODE="Error code"
_MSG_NOT_FOUND="Not found"
_MSG_ERROR_RETRIEVING_GDRIVE_RELEASES="An error happen retrieving Google Drive releases information from Github API."
_MSG_ERROR_PARSING_PENULTIMATE_GDRIVE_RELEASES_VERSION="An error happen parsing the penultimate Google Drive release version from Github API."
_MSG_ERROR_RETRIEVING_LAST_GDRIVE_RELEASE_VERSION="An error happen retrieving last Google Drive release version."
_MSG_ERROR_DOWNLOADING_GDRIVE="An error happen downloading Google Drive"
_MSG_CHECKING_GDRIVE_CLIENT="Checking Google Drive client..."
_MSG_RETRIEVING_LAST_AVAILABLE_VERSION="Retrieving last available version..."
_MSG_DOWNLOADING_GDRIVE_CLIENT="Downloading Google Drive client..."
_MSG_UPDATING_GDRIVE="Updating Google Drive"
_MSG_FOUND_GDRIVE_INSTALLED="Google Drive found installed in the system"
</%block>

<%block name="vars">
_GDRIVE_BINARY_PATH="/usr/bin/gdrive"
</%block>

<%block name="usage_opts">[-b PATH]</%block>
<%block name="usage_desc">
  Downloads or upgrade Google Drive binary.
</%block>
<%block name="usage_opts_desc">
  -b PATH, --binary-path PATH       Path where the downloaded 'gdrive' binary will be stored. As default at '$_GDRIVE_BINARY_PATH'.
</%block>

<%block name="prepare">
GITHUB_API_CURL_AUTH=""
if [ -n "$GITHUB_USERNAME" ] && [ -n "$GITHUB_TOKEN" ]; then
  GITHUB_API_CURL_AUTH="$GITHUB_USERNAME:$GITHUB_TOKEN"
fi;
</%block>

<%block name="argparse">
    -b|--binary-path)
    shift
    _GDRIVE_BINARY_PATH="$1"
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

function installScriptDependencies() {
  installPacmanIfNotInstalled

  INSTALLATION_DEPENDENCIES=("jq")
  for DEP in "<%text>${INSTALLATION_DEPENDENCIES[@]}</%text>"; do
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
  done
}

_GET_GDRIVE_VERSION_INDEX=0
_GET_GDRIVE_VERSION_404_ATTEMPTS=0
_GET_GDRIVE_VERSION_404_MAX_ATTEMPTS=10
function checkGoogleDriveVersionToDownloadExists() {
  _DOWNLOAD_GDRIVE_URL="https://github.com/gdrive-org/gdrive/releases/download/$_GDRIVE_LASTEST_VERSION/gdrive-linux-x64"
  _DOWNLOAD_GDRIVE_URL_EXISTS=0
  if curl --output /dev/null --silent --head --fail "$_DOWNLOAD_GDRIVE_URL"; then
    _DOWNLOAD_GDRIVE_URL_EXISTS=1
  fi;
}

_GET_GDRIVE_LATEST_VERSION_ATTEMPTS=0
_GET_GDRIVE_LATEST_VERSION_MAX_ATTEMPTS=5
_GET_GDRIVE_LATEST_VERSION_URL=https://api.github.com/repos/gdrive-org/gdrive/releases
function getGoogleDriveLatestVersion() {
  _GDRIVE_RELEASES_INFO="$(curl -sL "$GITHUB_API_CURL_AUTH" "$_GET_GDRIVE_LATEST_VERSION_URL" 2>&1)"
  _GDRIVE_RELEASES_INFO_MESSAGE="$(echo "$_GDRIVE_RELEASES_INFO" | jq -r '.message' 2>&1)"
  _GDRIVE_RELEASES_INFO_MESSAGE_EXIT_CODE=$?
  if [ $_GDRIVE_RELEASES_INFO_MESSAGE_EXIT_CODE -eq 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_RETRIEVING_GDRIVE_RELEASES" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_GDRIVE_LATEST_VERSION_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_GDRIVE_RELEASES_INFO_MESSAGE" >&2
    exit $_GDRIVE_RELEASES_INFO_MESSAGE_EXIT_CODE
  fi;

  _PARSE_GDRIVE_LASTEST_VERSION=$(
    echo "$_GDRIVE_RELEASES_INFO" | \
    jq -r ".[$_GET_GDRIVE_VERSION_INDEX].tag_name" 2>&1)
  _PARSE_GDRIVE_LASTEST_VERSION_EXIT_CODE=$?
  if [ $_PARSE_GDRIVE_LASTEST_VERSION_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_PARSING_PENULTIMATE_GDRIVE_RELEASES_VERSION" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_GET_GDRIVE_LATEST_VERSION_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR_CODE" "$_PARSE_GDRIVE_LASTEST_VERSION_EXIT_CODE" >&2
    printf "%s: %s" "$_MSG_ERROR" "$_PARSE_GDRIVE_LASTEST_VERSION" >&2
    exit $_PARSE_GDRIVE_LASTEST_VERSION_EXIT_CODE
  fi;

  _GDRIVE_LASTEST_VERSION=$(echo "$_PARSE_GDRIVE_LASTEST_VERSION" | cut -d'v' -f2 2>&1)
  _GET_GDRIVE_LATEST_VERSION_EXIT_CODE=$?
  if [ $_GET_GDRIVE_LATEST_VERSION_EXIT_CODE -ne 0 ]; then
    ((_GET_GDRIVE_LATEST_VERSION_ATTEMPTS++))
    if [ $_GET_GDRIVE_LATEST_VERSION_ATTEMPTS -ge $_GET_GDRIVE_LATEST_VERSION_MAX_ATTEMPTS ]; then
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      print "\n%s\n" "$_MSG_ERROR_RETRIEVING_LAST_GDRIVE_RELEASE_VERSION" >&2
      printf "%s: %s\n" "$_MSG_URL" "$_GET_GDRIVE_LATEST_VERSION_URL" >&2
      printf "%s: %d\n" "$_MSG_ERROR_CODE" "$_GET_GDRIVE_LATEST_VERSION_EXIT_CODE" >&2
      printf "%s: %s" "$_MSG_ERROR" "$_GDRIVE_LASTEST_VERSION" >&2
      exit $_GET_GDRIVE_LATEST_VERSION_EXIT_CODE
    else
      getGoogleDriveLatestVersion
    fi;
  fi;

  checkGoogleDriveVersionToDownloadExists
  if [ $_DOWNLOAD_GDRIVE_URL_EXISTS -ne 1 ]; then
    ((_GET_GDRIVE_VERSION_404_ATTEMPTS++))
    ((_GET_GDRIVE_VERSION_INDEX++))
    getGoogleDriveLatestVersion
  else
    printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$_GDRIVE_LASTEST_VERSION"
  fi;
}

function downloadGoogleDrive() {
  _DOWNLOAD_GDRIVE_URL="https://github.com/gdrive-org/gdrive/releases/download/$_GDRIVE_LASTEST_VERSION/gdrive-linux-x64"
  _DOWNLOAD_GDRIVE_OUTPUT="$(sudo curl -sL "$_DOWNLOAD_GDRIVE_URL" -o "$1" 2>&1)"
  _DOWNLOAD_GDRIVE_EXIT_CODE=$?
  if  [ $_DOWNLOAD_GDRIVE_EXIT_CODE -ne 0 ]; then
    printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s (v%s)\n" "$_MSG_ERROR_DOWNLOADING_GDRIVE" "$_GDRIVE_LASTEST_VERSION" >&2
    printf "%s: %s\n" "$_MSG_URL" "$_DOWNLOAD_GDRIVE_URL" >&2
    printf "%s: %s\n" "$_MSG_ERROR" "$_DOWNLOAD_GDRIVE_OUTPUT" >&2
    exit $_DOWNLOAD_GDRIVE_EXIT_CODE
  fi;

  _GDRIVE_BINARY_CONTENT="$(sudo cat "$1" | tr -d '\0')"
  if [ "$_GDRIVE_BINARY_CONTENT" = "Not Found" ]; then
    # Ocurrió un error 404 en la descarga
    #   ¿Seguimos intentándolo con otras versiones?
    if [ $_GET_GDRIVE_VERSION_404_ATTEMPTS -ge $_GET_GDRIVE_VERSION_404_MAX_ATTEMPTS ]; then
      sudo rm -f "$1"
      printf "\e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "\n%s (v%s)\n" "$_MSG_ERROR_DOWNLOADING_GDRIVE" "$_GDRIVE_LASTEST_VERSION" >&2
      printf "%s: %s\n" "$_MSG_ERROR_DOWNLOADING_GDRIVE" "$_DOWNLOAD_GDRIVE_URL" >&2
      printf "%s: 404\n" "$_MSG_ERROR_CODE" >&2
      printf "%s: %s\n" "$_MSG_ERROR" "$_GDRIVE_BINARY_CONTENT" >&2
      exit 1
    else
      printf " (%s) \e[91m\xE2\x9C\x95\e[39m\n" "$_MSG_NOT_FOUND"
      ((_GET_GDRIVE_VERSION_404_ATTEMPTS++))
      ((_GET_GDRIVE_VERSION_INDEX++))
      getGoogleDriveLatestVersion
      downloadGoogleDrive "$1"
    fi;
  fi;
  sudo chmod +x "$1"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function main() {
  printIndent
  printf "%s\n" "$_MSG_CHECKING_GDRIVE_CLIENT"
  installScriptDependencies

  printIndent
  printf "  %s" "$_MSG_RETRIEVING_LAST_AVAILABLE_VERSION"
  getGoogleDriveLatestVersion

  # Comprobamos si está instalado
  _GDRIVE_FILEPATH=$(command -v gdrive)
  _GDRIVE_FILEPATH_EXIT_CODE=$?
  if [ $_GDRIVE_FILEPATH_EXIT_CODE -ne 0 ]; then
    _GDRIVE_FILEPATH=""
  fi;

  if [ "$_GDRIVE_FILEPATH" = "" ]; then
    # Si no está instalado
    printIndent
    printf "  %s (v%s)..." "$_MSG_DOWNLOADING_GDRIVE_CLIENT" "$_GDRIVE_LASTEST_VERSION"
    downloadGoogleDrive "$_GDRIVE_BINARY_PATH"
  else
    _GDRIVE_VERSION_OUTPUT=$(gdrive version | head -n 1 | cut -d' ' -f2)
    _GDRIVE_VERSION_OUTPUT_EXIT_CODE=$?
    if [ $_GDRIVE_VERSION_OUTPUT_EXIT_CODE -ne 0 ]; then
      sudo rm -f "$(command -v gdrive)"
      printIndent
      printf "  %s (v%s)..." "$_MSG_DOWNLOADING_GDRIVE_CLIENT" "$_GDRIVE_LASTEST_VERSION"
      downloadGoogleDrive "$_GDRIVE_BINARY_PATH"
    else
      _GDRIVE_INSTALLED_VERSION=$_GDRIVE_VERSION_OUTPUT
      printIndent
    	printf "  %s (v%s)" "$_MSG_FOUND_GDRIVE_INSTALLED" "$_GDRIVE_INSTALLED_VERSION"
      printf " \e[92m\xE2\x9C\x94\e[39m\n"

      # Si no está actualizado a la última versión
      if [ "$_GDRIVE_INSTALLED_VERSION" != "$_GDRIVE_LASTEST_VERSION" ]; then
        printIndent
        printf "  %s (v%s" "$_MSG_UPDATING_GDRIVE" "$_GDRIVE_INSTALLED_VERSION"
        printf " -> v%s)..." "$_GDRIVE_LASTEST_VERSION"
        sudo rm -f $_GDRIVE_FILEPATH
        downloadGoogleDrive $_GDRIVE_FILEPATH
      fi;
    fi;
  fi;
}
</%block>
