#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Lints the project:\n"
  printf "    - Builds 'public/' directory if is not built and run shellcheck"
  printf " agains all Bash script files.\n\n"
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

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

_EXIT_CODE=0

function buildIfNotAlreadyBuilt() {
  # Build if not built
  if [ ! -d "public" ]; then
    bash scripts/build.sh
  fi;
}

function installScriptDependencies() {
  # Download shunit2 binary to follow sources properly
  if [ ! -f scripts/shunit2 ]; then
    curl -sL "$PUBLIC_URL/unix/_/download/shunit2/en.sh" \
      | sudo bash -s -- --dest-path "scripts/shunit2" > /dev/null || exit $?
  fi;

  # Download pacman binary to install packages consistently
  if [ "$(command -v pacman)" = "" ]; then
    curl -sL "$PUBLIC_URL/unix/_/download/pacapt/en.sh" sudo bash - > /dev/null
  fi;

  # Install 'shellcheck'
  if [[ "$(sudo pacman -Qi shellcheck 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo apt-get install -y -qqq shellcheck > /dev/null || exit $?
  fi;
}


function printSeparator() {
  printf "%s" "------------------------------------------------------"
  printf "%s" "------------------------------------------------------"
  printf "\n"
}

function main() {
  buildIfNotAlreadyBuilt
  installScriptDependencies

  printf "Linting files...\n\n"

  _NFILES_TOTAL=0
  _NFILES_LINTED=0

  for _DIR in "${SCRIPTS_DIRECTORIES[@]}"; do
    find "$_DIR" -name "*.sh" > /tmp/files-to-lint.txt
    while read -r filepath; do
      script_filename=$(basename "$filepath")
      if [ "$script_filename" = "__main.sh" ]; then
        continue
      fi;

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
