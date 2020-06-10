#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/test.sh
source scripts/test.sh

# shellcheck source=src/unix/debian/install/python/v3/main.sh
UNIX_DISTRO="" source src/unix/debian/install/python/v3/main.sh

: '
  Make sure that APT packages are available for every distribution/release.
'
function testAptPackages() {
  assertAptPackagesAvailable "${INSTALLATION_PACKAGES[@]}"
}

. ./scripts/shunit2
