#!/bin/bash

_EXIT_CODE=0

if [[ "$(sudo dpkg -s shellcheck 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq shellcheck > /dev/null || exit $?
fi;

function main() {
  printf "Linting files...\n\n"
  find src -iname "main.sh" | while read filepath; do
    printf "%s" "---------------------------------------------------------"
    printf "%s" "---------------------------------------------------------"
    printf "\n\$ bash $filepath\n\n"
    shellcheck $filepath
    if [ $? -ne 0 ]; then
      _EXIT_CODE=1
    fi;
  done;
}

main
exit $_EXIT_CODE
