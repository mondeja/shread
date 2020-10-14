#!/bin/bash
# -*- ENCODING: UTF-8 -*-

: '
  Test if the distribution of linux is sourced on environment variables:
    - UNIX_DISTRO -> Distribution name lowercased.
'
testUnixDistro() {
  if [ "$SHREAD_TEST__UNIX_DISTRO" = "" ] && [ "$SHREAD_TEST__UNIX_DISTRO_VERSION_NAME" = "" ] && [ "$SHREAD_TEST__UNIX_DISTRO_VERSION_NUMBER" = "" ]; then
    startSkipping
  fi;
  # shellcheck source=src/unix/_/util/get-distro/test.sh
  . public/unix/_/util/get-distro/en.sh
  assertEquals "$SHREAD_TEST__UNIX_DISTRO" "$UNIX_DISTRO"
  assertEquals "$SHREAD_TEST__UNIX_DISTRO_VERSION_NAME" "$UNIX_DISTRO_VERSION_NAME"
  assertEquals "$SHREAD_TEST__UNIX_DISTRO_VERSION_NUMBER" "$UNIX_DISTRO_VERSION_NUMBER"

  if isSkipping; then
    endSkipping
  fi;
}

# shellcheck disable=SC1091
. ./scripts/shunit2
