#!/bin/bash

_EXIT_CODE=0

if [[ "$(sudo dpkg -s shellcheck 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo apt-get install -y -qqq shellcheck > /dev/null || exit $?
fi;

function printSeparator() {
  printf "%s" "------------------------------------------------------"
  printf "%s" "------------------------------------------------------"
  printf "\n"
}

function main() {
  printf "Linting files...\n\n"

  _NFILES_TOTAL=0
  _NFILES_LINTED=0

  _DIRECTORIES=$(
    "src"
    "scripts"
  )
  for _DIR in "${_DIRECTORIES[@]}"; do
    echo "$(find $_DIR -name "*.sh")" > /tmp/files-to-lint.txt
    while read -r filepath; do
      printSeparator
      printf "$filepath "
      shellcheck $filepath
      if [ $? -ne 0 ]; then
        _EXIT_CODE=1
      else
        ((_NFILES_LINTED++))
        printf "\e[92m\xE2\x9C\x94\e[39m\n"
      fi;
      ((_NFILES_TOTAL++))
    done < /tmp/files-to-lint.txt;
    rm -f /tmp/files-to-lint.txt
  done;

  printSeparator
  printf "\nFiles linted/total: %d/%d" "$_NFILES_LINTED" "$_NFILES_TOTAL"
  if [ "$_NFILES_LINTED" != "$_NFILES_TOTAL" ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m" >&2
  fi;
  printf "\n\n"
}

main
exit $_EXIT_CODE
