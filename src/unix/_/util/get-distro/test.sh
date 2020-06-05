#!/bin/bash

: '
  Test if the distribution of linux is sourced on environment variables:
    - UNIX_DISTRO -> Distribution name lowercased.
'
testUnixDistro() {
  # shellcheck source=src/unix/_/util/get-distro/test.sh
  . public/unix/_/util/get-distro/en.sh
  assertEquals "$SHREAD_TEST__UNIX_DISTRO" "$UNIX_DISTRO"
}

# shellcheck source=scripts/shunit2
. ./scripts/shunit2
