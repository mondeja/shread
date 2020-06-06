#!/bin/bash
# -*- ENCODING: UTF-8 -*-

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

. ./scripts/shunit2
