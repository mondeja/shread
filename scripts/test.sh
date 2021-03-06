#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Tests the project:\n"
  printf "    - Builds the project if is not built yet.\n"
  printf "    - Dowload shunit2 into 'scripts/shunit2' if not downloaded yet.\n"
  printf "    - Executes each 'test.sh' file located in 'src/' directory tree."
  printf "\n\n"
  printf "Options:\n"
  printf "  -h, --help                    Show this help message and exit.\n"
  exit 1
}

for arg in "$@"; do
  case $arg in
    -h|--help)
    shift
    usage
    ;;
  esac
done

function buildIfNotAlreadyBuilt() {
  if [ ! -d public ]; then
    bash scripts/build.sh
  fi;
}

function installScriptDependencies() {
  # Install pacman
  if [ "$(command -v pacman)" = "" ]; then
    curl -sL "$PUBLIC_URL/unix/_/download/pacapt/en.sh" | sudo bash - > /dev/null
  fi;

  if [ ! -f scripts/shunit2 ]; then
    source scripts/constants.sh
    curl -sL "$PUBLIC_URL/unix/_/download/shunit2/en.sh" \
      | sudo bash -s -- --dest-path "scripts/shunit2"
  fi;
}

function main {
  buildIfNotAlreadyBuilt
  installScriptDependencies

  SHUNIT_VERSION=$(< scripts/shunit2 grep "SHUNIT_VERSION=" | cut -d"'" -f2)
  printf "Using shunit2 v%s\n\n" "$SHUNIT_VERSION"

  _EXIT_CODE=0
  printf "%s\n" "$(find src -iname "test.sh")" > /tmp/files-to-test.txt
  while read -r filepath; do
    printf "%s" "---------------------------------------------------------"
    printf "\n\$ bash %s\n\n" "$filepath"
    bash "$filepath"
    _TEST_EXIT_CODE=$?
    if [ $_TEST_EXIT_CODE -ne 0 ]; then
      _EXIT_CODE=1
    fi;
  done < /tmp/files-to-test.txt;
  exit $_EXIT_CODE
}


# shellcheck disable=SC2016
: '
  Checks that passed APT packages are available as APT sources.
  You need to manually update the sources before run this test.

  Usage example:
    ```
    INSTALLATION_DEPENDENCIES=(
      "debconf-utils"
      "build-essential"
      "lsb-release"
    )
    assertAptPackagesAvailable "${INSTALLATION_DEPENDENCIES[@]}"
    ```
'
function assertAptPackagesAvailable {
  # aptitude is required to search packages
  if [[ "$(sudo pacman -Qi aptitude 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo pacman -S -- -y aptitude > /dev/null || exit $?
  fi;

  DEPENDENCIES=("$@")
  for DEP in "${DEPENDENCIES[@]}"; do
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      _APTITUDE_SEARCH="$(sudo aptitude search "$DEP" 2> /dev/null)"
      assertNotEquals "$DEP not found on public in repositories ->" "$_APTITUDE_SEARCH" ""
    fi;
    printf "  %s \e[92m\xE2\x9C\x94\e[39m\n" "$DEP"
  done;
  printf "\n"
}


# If the script is not being sourced, run `main` function
if ! (return 0 2>/dev/null); then
  main
fi;
