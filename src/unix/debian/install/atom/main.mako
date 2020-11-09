<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_ALREADY_INSTALLED="is already installed"
_MSG_CHECKING_ATOM="Checking Atom..."
_MSG_ERROR_OBTAINING_ATOM_PUBLIC_KEY="An error happen rerieving Atom public key:"
_MSG_ADDING_REPO="Adding repository..."
_MSG_UPDATING_PACKAGES="Updating packages..."
_MSG_ATOM_FOUND="Atom found"
_MSG_RUNNING_INSTALLATION_SCRIPT="Running installation script..."
_MSG_ERROR_INSTALLING_ATOM="An error happen installing Atom"
</%block>

<%block name="usage_desc">
  Installs Atom using https://packagecloud.io/AtomEditor repository as source.
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

function installScriptDependencies() {
  installPacmanIfNotInstalled

  INSTALLATION_DEPENDENCIES=(
    "wget"
    "jq"
    "gnupg2"
  )
  for DEP in "<%text>${INSTALLATION_DEPENDENCIES[@]}</%text>"; do
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
  done;
}

function signAtomGpgKey() {
  SIGN_ATOM_GPG_KEY_STDERR=$(
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | \
    sudo apt-key add - 2>&1 > /dev/null)
  SIGN_ATOM_GPG_KEY_EXIT_CODE=$?
  if [ $SIGN_ATOM_GPG_KEY_EXIT_CODE -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s\n" "$_MSG_ERROR_OBTAINING_ATOM_PUBLIC_KEY" >&2
    printf "%s\n" "$SIGN_ATOM_GPG_KEY_STDERR" >&2
    exit $SIGN_ATOM_GPG_KEY_EXIT_CODE
  fi;
}

function addAtomRepositoryToSources() {
  if [ ! -f "/etc/apt/sources.list.d/atom.list" ]; then
    ARCH="amd64"
    case $(uname -m) in
        i386)   ARCH="386" ;;
        i686)   ARCH="386" ;;
        x86_64) ARCH="amd64" ;;
        arm)    dpkg --print-architecture | grep -q "arm64" && ARCH="arm64" || ARCH="arm" ;;
    esac

    echo \
      "deb [arch=<%text>${ARCH}</%text>] https://packagecloud.io/AtomEditor/atom/any/ any main" \
      | sudo tee /etc/apt/sources.list.d/atom.list
  fi;
}

function updatePackages() {
  sudo pacman update > /dev/null
}

ATOM_VERSION=""
function getAtomVersion() {
  ATOM_VERSION="$(pacman -Si atom | grep Version: | head -n 1 | cut -d ' ' -f2)"
}

function installAtom() {
  printIndent
  printf "%s\n" "$_MSG_CHECKING_ATOM"

  installScriptDependencies

  printIndent
  printf "  %s..." "$_MSG_ADDING_REPO"
  signAtomGpgKey
  addAtomRepositoryToSources

  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printIndent
  printf "  %s" "$_MSG_UPDATING_PACKAGES"
  updatePackages
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  getAtomVersion
  if [ "$ATOM_VERSION" != "" ]; then
    printIndent
    printf "  %s (v%s)" "$_MSG_ATOM_FOUND" "$ATOM_VERSION"
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  fi;

  printIndent
  printf "  %s" "$_MSG_RUNNING_INSTALLATION_SCRIPT"
  INSTALL_ATOM_STDERR="$(sudo pacman -S -- -y atom > /dev/null)"
  INSTALL_ATOM_EXIT_CODE=$?
  if [ "$INSTALL_ATOM_EXIT_CODE" -ne 0 ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s" "$_MSG_ERROR_INSTALLING_ATOM" >&2
    if [ "$ATOM_VERSION" != "" ]; then
      printf " (v%s)" "$ATOM_VERSION" >&2
    fi;
    printf ":\n%s\n" "$INSTALL_ATOM_STDERR" >&2
    exit $INSTALL_ATOM_EXIT_CODE
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function printAtomInstalledMsg() {
  printIndent
  ATOM_VERSION=$(
    apm -v | \
    sed -n 4p | \
    cut -d' ' -f2 | \
    sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")
  printf "Atom v%s %s" "$ATOM_VERSION" "$_MSG_ALREADY_INSTALLED"
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function main() {
  ATOM_BINARY_PATH="$(command -v atom)"
  if [ "$ATOM_BINARY_PATH" != "" ]; then
    printAtomInstalledMsg
  else
    installAtom
  fi;
}

function exportVariables() {
  signAtomGpgKey
  addAtomRepositoryToSources
  updatePackages
  getAtomVersion

  export ATOM_VERSION
}
</%block>
