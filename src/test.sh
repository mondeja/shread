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
  DIRECTORIES=(
    "scripts"
    "public"
  )

  for _DIR in "${DIRECTORIES[@]}"; do
    while IFS= read -r filepath; do
      _SCRIPT_TO_FIRST_LINES="$(< "$filepath" head -n ${#SCRIPTS_SHEBANGS[@]})"

      for i in "${!SCRIPTS_SHEBANGS[@]}"; do
        # Built files located at 'public/' only have '#!/bin/bash' shebang
        if [ "${SCRIPTS_SHEBANGS[$i]}" = "# -*- ENCODING: UTF-8 -*-" ] && [ "$_DIR" = "public" ]; then
          continue
        fi;

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

  - Debian 10 (Buster): 2024-06
  - Debian 11 (Bullseye): 2026-06
  - Ubuntu 18.04 (Bionic): 2023-04
  - Ubuntu 20.04 (Focal): 2025-04
  - Ubuntu 22.04 (Groovy): 2027-04
'
function testSupportedDistributionsLtsEol {
  currentTs="$(date +%s)"

  # Debian 10
  assertFalse "Debian 10 has reach his LTS EOL (2024-06)" \
    "[ $currentTs -gt 1717200000 ]"

  # Debian 11
  assertFalse "Debian 11 has reach his LTS EOL (2026-06)" \
    "[ $currentTs -gt 1780264800 ]"

  # Ubuntu 18.04
  assertFalse "Ubuntu 18.04 has reach his LTS EOL (2023-04)" \
    "[ $currentTs -gt 1680307200 ]"

  # Ubuntu 20.04
  assertFalse "Ubuntu 20.04 has reach his LTS EOL (2025-04)" \
    "[ $currentTs -gt 1743465600 ]"

  # Ubuntu 20.04
  assertFalse "Ubuntu 22.04 has reach his LTS EOL (2027-04)" \
    "[ $currentTs -gt 1806530400 ]"
}

: '
  Test --set-x option.
'
function testSetXOption {
  first_statement="$(
    bash public/unix/_/util/get-distro/es.sh --set-x 2>&1 1>/dev/null \
    | head -n 1)"

  assertEquals \
    "The --set-x option has produced unexpected output" \
    "$first_statement" \
    "+ return 0"
}

. ./scripts/shunit2
