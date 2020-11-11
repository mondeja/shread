#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Bump the version of the project in 'scripts/constants.sh' and"
  printf "  all pofiles.\nIf not passed any options, the minor version will"
  printf " be increased.\n\n"
  printf "Options:\n"
  printf "  -h, --help                    Show this help message and exit.\n"
  printf "  -p, --patch                   Increase patch version number."
  printf " If this option is passed, the options '--minor' and '--major' will"
  printf " be overridden.\n"
  printf "  -m, --minor                   Increase minor version number."
  printf " Is this option is passed, the option '--major' will be overridden.\n"
  printf "  -M, --major                   Increase major version number.\n\n"
  exit 1
}

_PATCH=0
_MINOR=0
_MAJOR=0

for arg in "$@"; do
  case $arg in
    -h|--help)
    shift
    usage
    ;;

    -p|--patch)
    _PATCH=1
    shift
    ;;

    -m|--minor)
    _MINOR=1
    shift
    ;;

    -M|--major)
    _MAJOR=1
    shift
    ;;
  esac
done

if [ "$_PATCH" -eq 0 ] && [ "$_MINOR" -eq 0 ] && [ "$_MAJOR" -eq 0 ]; then
  _PATCH=1
fi;

_PREVIOUS_VERSION=""
function getPreviousVersion() {
  _PREVIOUS_VERSION="$(
    < scripts/constants.sh grep "^SHREAD_VERSION" | cut -d'"' -f2)"
}

_NEW_VERSION=""
function computeNewVersion() {
  _PATCH_PART="$(printf "%s" "$_PREVIOUS_VERSION" | cut -d'.' -f3)"
  _MINOR_PART="$(printf "%s" "$_PREVIOUS_VERSION" | cut -d'.' -f2)"
  _MAJOR_PART="$(printf "%s" "$_PREVIOUS_VERSION" | cut -d'.' -f1)"
  if [ "$_PATCH" -eq 1 ]; then
    _NEW_VERSION="$_MAJOR_PART.$_MINOR_PART.$((_PATCH_PART+1))"
  elif [ "$_MINOR" -eq 1 ]; then
    _NEW_VERSION="$_MAJOR_PART.$((_MINOR_PART+1)).0"
  else
    _NEW_VERSION="$((_MAJOR_PART+1)).0.0"
  fi;
}

function incrementVersion() {
  # scripts/constants.sh
  sed -i -E "s/SHREAD_VERSION=\".+\"/SHREAD_VERSION=\"$_NEW_VERSION\"/g" \
    "scripts/constants.sh"

  # source scripts pofiles
  find src -type f -name "*.po" | while read -r po_filepath; do
    sed -i -E "s/Project-Id\-Version: .+\\\\n/Project-Id-Version: $_NEW_VERSION\\\\n/g" \
      "$po_filepath"
  done;
}

function main() {
  getPreviousVersion
  computeNewVersion
  incrementVersion
  printf "%s -> %s \e[92m\xE2\x9C\x94\e[39m\n" \
    "$_PREVIOUS_VERSION" "$_NEW_VERSION"
}

main
