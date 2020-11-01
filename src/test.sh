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
    "gnupg2"
    "ca-certificates"
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

: '
  Test that there are not obsolete messages in pofiles.
'
function testNonObsoletePofilesMessages {
  find src ! -name "$(printf "*\n*")" -name '*.po' > /tmp/_shread-pofiles.txt
  while IFS= read -r filepath; do
    i=0
    while IFS= read -r line; do
      newi="$(( ++i ))"
      if [[ $line =~ ^#~[[:space:]]msgid.* ]]; then
        fail "Found obsolete msgid at '$filepath:$newi': '$line'"
      fi;
    done < "$filepath"
  done < /tmp/_shread-pofiles.txt
}

: '
  Test that supported distributions have not reached LTS EOL.

  - Debian 9 (Stretch): 2022-06-30
  - Debian 10 (Buster): 2024-06
  - Ubuntu 18.04 (Bionic): 2023-04
  - Ubuntu 20.04 (Focal): 2025-04
'
function testSupportedDistributionsLtsEol {
  currentTs="$(date +%s)"

  # Debian 9
  eolTs=1656547200
  assertFalse "Debian 9 has reach his LTS EOL (2022-06-30)" \
   "[ $currentTs -gt $eolTs ]"

   # Debian 10
   eolTs=1717200000
   assertFalse "Debian 10 has reach his LTS EOL (2024-06)" \
    "[ $currentTs -gt $eolTs ]"

  # Ubuntu 18.04
  eolTs=1680307200
  assertFalse "Ubuntu 18.04 has reach his LTS EOL (2023-04)" \
   "[ $currentTs -gt $eolTs ]"

   # Ubuntu 20.04
   eolTs=1743465600
   assertFalse "Ubuntu 20.04 has reach his LTS EOL (2025-04)" \
    "[ $currentTs -gt $eolTs ]"
}

. ./scripts/shunit2
