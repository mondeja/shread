#!/bin/bash

: '
  Test if the distribution of linux is sourced on environment variables:
    - UNIX_DISTRO -> Distribution name lowercased.
    - UNIX_DISTRO_CAPITALIZED -> Distribution name capitalized.

    Currently, only Ubuntu distributions are supported.
'
testUnixDistro() {
  . public/unix/_/util/get-distro/en.sh
  assertEquals "ubuntu" "$UNIX_DISTRO"
  assertEquals "Ubuntu" "$UNIX_DISTRO_CAPITALIZED"
}

. ./scripts/shunit2
