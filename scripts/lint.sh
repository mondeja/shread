#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

_EXIT_CODE=0

# Build if not built
if [ ! -d "public" ]; then
  bash scripts/build.sh
fi;

# Download shunit2 binary to follow sources properly
if [ ! -f scripts/shunit2 ]; then
  bash src/unix/_/download/shunit/main.sh \
    --dest-path "scripts/shunit2" > /dev/null || exit $?
fi;

# Download pacman binary to install packages consistently
if [ "$(command -v pacman)" = "" ]; then
  bash "src/unix/_/download/pacapt/main.sh" > /dev/null
fi;

if [[ "$(sudo pacman -Qi shellcheck 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
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

  for _DIR in "${SCRIPTS_DIRECTORIES[@]}"; do
    find "$_DIR" -name "*.sh" > /tmp/files-to-lint.txt
    while read -r filepath; do
      printSeparator
      printf "%s" "$filepath "
      shellcheck -x "$filepath"
      _SHELLCHECK_EXIT_CODE=$?
      if [ $_SHELLCHECK_EXIT_CODE -ne 0 ]; then
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
