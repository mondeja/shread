#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

# shellcheck source=scripts/test.sh
source scripts/test.sh

: '
  Test if APT packages dependencies for all scripts are reachable
    from public repositories.
'
function testDependentAptPackages {
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
    "aptitude"
  )

  assertAptPackagesAvailable "${INSTALLATION_DEPENDENCIES[@]}"
}

: '
  Test that all scripts of the repository contains shebangs defined at
    SCRIPTS_SHEBANGS variable of scripts/constants.sh file.
'
function testScriptsShebangs {
  for _DIR in "${SCRIPTS_DIRECTORIES[@]}"; do
    while IFS= read -r filepath; do
      _SCRIPT_TO_FIRST_LINES="$(< "$filepath" head -n ${#SCRIPTS_SHEBANGS[@]})"

      for i in "${!SCRIPTS_SHEBANGS[@]}"; do
        assertEquals \
          "Shebang '${SCRIPTS_SHEBANGS[$i]}' not properly defined at file '$filepath'\n   " \
          "${SCRIPTS_SHEBANGS[$i]}" \
          "$(echo "$_SCRIPT_TO_FIRST_LINES" | head -n $((i+1)) | tail -n 1)"
      done
    done < <(find "$_DIR" -name "*.sh")
  done
}

. ./scripts/shunit2
