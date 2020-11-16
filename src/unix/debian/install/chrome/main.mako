<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_CHECKING_ECOSYSTEM="Checking Chrome ecosystem..."
_MSG_UNABLE_TO_INSTALL_32_BITS="Is not possible to install Google Chrome on 32 bits systems."
_MSG_INSTALLING_GOOGLE_CHROME="Installing Google Chrome..."
_MSG_FOUND_CHROME_INSTALLED="Google Chrome found installed"
_MSG_INSTALLING_CHROMEDRIVER="Installing chromedriver"
_MSG_UPDATING_CHROMEDRIVER="Updating chromedriver"
_MSG_FOUND_CHROMEDRIVER_INSTALLED="Chromedriver found installed"
</%block>

<%block name="vars">
_CHROMEDRIVER_PATH="/usr/bin/chromedriver"
_DOWNLOAD_CHROMEDRIVER=1
</%block>

<%block name="usage_opts">[-d CHROMEDRIVER_PATH]</%block>
<%block name="usage_desc">
  Installs and upgrade Chrome and Chromedriver retrieving binaries from oficial sources.
</%block>
<%block name="usage_opts_desc">
  -d CHROMEDRIVER_PATH, --chromedriver-path CHROMEDRIVER_PATH
                                    Specifies where be stored the downloaded 'chromedriver' binary. As default at '$_CHROMEDRIVER_PATH'.
  -n, --no-chromedriver             If passed, does not download nor updates chromedriver.
</%block>

<%block name="argparse">
    -d|--chromedriver-path)
    shift
    _CHROMEDRIVER_PATH="$1"
    shift
    ;;

    -n|--no-chromedriver)
    _DOWNLOAD_CHROMEDRIVER=0
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
}

_GOOGLE_CHROME_BINARY_PATH=""
function getGoogleChromeBinaryPath() {
  _GOOGLE_CHROME_BINARY_PATH="$(command -v google-chrome)"
  if [ "$_GOOGLE_CHROME_BINARY_PATH" = "" ]; then
    _GOOGLE_CHROME_BINARY_PATH="$(command -v google-chrome-stable)"
  fi;
}

function checkSystemArch() {
  if [[ "$(uname -m)" != "x86_64" ]]; then
    printIndent >&2
    printf "  %s" "$_MSG_UNABLE_TO_INSTALL_32_BITS" >&2
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    exit 1
  fi;
}

function installGoogleChrome() {
  printf "  %s" "$_MSG_INSTALLING_GOOGLE_CHROME"
  # Download Google Chrome stable package
  curl -sL https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    --output /tmp/google-chrome-stable_current_amd64.deb

  # Install package
  sudo pacman -S -- -y /tmp/google-chrome-stable_current_amd64.deb > /dev/null

  # Remove downloaded package
  sudo rm -f /tmp/google-chrome-stable_current_amd64.deb
  getGoogleChromeBinaryPath
  printf " (v%s)" "$($_GOOGLE_CHROME_BINARY_PATH --version | cut -d' ' -f3)"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

CHROMEDRIVER_VERSION=""
function getLatestChromedriverVersion() {
  # Get installed Google Chrome major version
  GOOGLE_CHROME_MAJOR_VERSION="$("$_GOOGLE_CHROME_BINARY_PATH" --version | cut -d' ' -f3 | cut -d'.' -f1)"

  # Get chromedrirver versions control XML file
  curl -sL https://chromedriver.storage.googleapis.com/ \
    --output /tmp/chromedriver-versions.xml
  # Get chromedriver version matching installed Google Chrome major version
  CHROMEDRIVER_VERSION=$(grep -Po "<%text><Key></%text>$GOOGLE_CHROME_MAJOR_VERSION\.*\d*\.*\d+\.*\d*\/chromedriver_linux64\.zip" /tmp/chromedriver-versions.xml |
      grep -Po "$GOOGLE_CHROME_MAJOR_VERSION\.*\d*\.*\d+\.*\d*" | \
      head -n 1)
  sudo rm -f /tmp/chromedriver-versions.xml
}

_CHROMEDRIVER_BINARY_PATH=""
function getChromedriverBinaryPath() {
  _CHROMEDRIVER_BINARY_PATH="$(command -v chromedriver)"
}

function installChromeDriver() {
  # Download chromedriver zip
  curl -sL \
    "https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip" \
    --output "chromedriver_linux64.zip"

  # Unzip the drriver
  unzip -q chromedriver_linux64.zip
  sudo rm -f chromedriver_linux64.zip

  # Move to configured path
  sudo rm -f "_CHROMEDRIVER_PATH"
  sudo mv -f chromedriver "_CHROMEDRIVER_PATH"
}

function main() {
  printIndent
  printf "%s\n" "$_MSG_CHECKING_ECOSYSTEM"

  getGoogleChromeBinaryPath
  if [ "$_GOOGLE_CHROME_BINARY_PATH" = "" ]; then
    checkSystemArch
    installGoogleChrome
  else
    printf "  %s" "$_MSG_FOUND_CHROME_INSTALLED"
    printf " (v%s)" "$($_GOOGLE_CHROME_BINARY_PATH --version | cut -d' ' -f3)"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;

  if [ "$_DOWNLOAD_CHROMEDRIVER" -eq 1 ]; then
    getLatestChromedriverVersion
    getChromedriverBinaryPath

    printIndent
    if [ "$_CHROMEDRIVER_BINARY_PATH" = "" ]; then
      printf "  %s (v%s)..." "$_MSG_INSTALLING_CHROMEDRIVER" "$CHROMEDRIVER_VERSION"
      installChromeDriver
    else
      # Chromedriver is installed, check if we can update it
      _CHROMEDRIVER_INSTALLED_VERSION="$("$_CHROMEDRIVER_BINARY_PATH" --version | cut -d' ' -f2)"

      if [ "$_CHROMEDRIVER_INSTALLED_VERSION" != "$CHROMEDRIVER_VERSION" ]; then
        printf "  %s (v%s" "$_MSG_UPDATING_CHROMEDRIVER" "$_CHROMEDRIVER_INSTALLED_VERSION"
        printf " -> v%s)..." "$CHROMEDRIVER_VERSION"
        installChromeDriver
      else
        printf "  %s (v%s)" "$_MSG_FOUND_CHROMEDRIVER_INSTALLED" "$_CHROMEDRIVER_INSTALLED_VERSION"
      fi
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;
}
</%block>
