#!/bin/bash

: '
  Currently, only Ubuntu distributions are supported.
'
testUnixDistro() {
  . public/unix/_/util/get-distro/en.sh
  assertEquals "$UNIX_DISTRO" "ubuntu"
  assertEquals "$UNIX_DISTRO_CAPITALIZED" "Ubuntu"
}

. ./scripts/shunit2
