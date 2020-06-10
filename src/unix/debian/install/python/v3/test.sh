#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/test.sh
source scripts/test.sh

# shellcheck source=src/unix/debian/install/python/v3/main.sh
source src/unix/debian/install/python/v3/main.sh

: '
  Make sure that APT packages are available for every distribution/release.
'
function testAptPackages() {
  if [ "$UNIX_DISTRO" = "ubuntu" ]; then
    echo "$UNIX_DISTRO_VERSION_NAME"
  fi;
}

. ./scripts/shunit2
