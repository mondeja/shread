#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

: '
  Test if APT packages dependencies for all scripts are reachable
    from public repositories.
'
function testDependentAptPackages {
  # aptitude is required to search packages
  if [[ "$(sudo dpkg -s aptitude 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq aptitude > /dev/null
  fi;

  INSTALLATION_DEPENDENCIES=(
    "curl"
    "debconf-utils"
    "build-essential"
    "gcc"
    "g++"
    "make"
    "apt-transport-https"
    "lsb-release"
    "gnupg"
    "jq"
    "net-tools"
    "wget"
    "tcl"
  )
  for DEP in "${INSTALLATION_DEPENDENCIES[@]}"; do
    if [[ "$(dpkg -s "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      _APTITUDE_SEARCH="$(sudo aptitude search "$DEP" 2> /dev/null)"
      assertNotEquals "$DEP not found on public APT repositories ->" "$_APTITUDE_SEARCH" ""
    fi;
  done;
}

: '
  Test if all scripts of the repository contains shebangs defined at
    SCRIPTS_SHEBANGS variable of scripts/constants file.
'
function testScriptsShebangs {
  _DIRECTORIES=(
    "scripts"
    "src"
  )
  for _DIR in "${_DIRECTORIES[@]}"; do
    while IFS= read -r filepath; do
      _SCRIPT_TO_FIRST_LINES="$(< "$filepath" head -n 2)"
      assertEquals \
        "Shebang '${SCRIPTS_SHEBANGS[0]}' not properly defined at file '$filepath'\n   " \
        "${SCRIPTS_SHEBANGS[0]}" \
        "$(echo "$_SCRIPT_TO_FIRST_LINES" | head -n 1)"

      assertEquals \
        "Shebang '${SCRIPTS_SHEBANGS[1]}' not properly defined at file '$filepath'\n   " \
        "${SCRIPTS_SHEBANGS[1]}" \
        "$(echo "$_SCRIPT_TO_FIRST_LINES" | head -n 2 | tail -n 1)"
    done < <(find "$_DIR" -name "*.sh")
  done
}

. ./scripts/shunit2
