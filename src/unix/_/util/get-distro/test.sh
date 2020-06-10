#!/bin/bash
# -*- ENCODING: UTF-8 -*-

: '
  Test if the distribution of linux is sourced on environment variables:
    - UNIX_DISTRO -> Distribution name lowercased.
'
testUnixDistro() {
  # shellcheck source=src/unix/_/util/get-distro/test.sh
  . src/unix/_/util/get-distro/main.sh
  assertEquals "$SHREAD_TEST__UNIX_DISTRO" "$UNIX_DISTRO"
  assertEquals "$SHREAD_TEST__UNIX_DISTRO_VERSION_NAME" "$UNIX_DISTRO_VERSION_NAME"
  assertEquals "$SHREAD_TEST__UNIX_DISTRO_VERSION_NUMBER" "$UNIX_DISTRO_VERSION_NUMBER"
}

. ./scripts/shunit2
