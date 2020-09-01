#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function testAtomIsNotInstalled() {
  _ATOM_BINARY_PATH="$(command -v atom)"
  if [ -n "$_ATOM_BINARY_PATH" ] && [ "$SHREAD_TEST__ATOM_MUST_NOT_BE_INSTALLED" != "true" ]; then
    startSkipping
  fi;

  # package manager binary must not exists
  assertNull \
    "apm binary available before atom install" \
    "$(command -v apm)"

  # package repository must not exists
  assertTrue \
    "'/etc/apt/sources.list.d/atom.list' exists before atom install" \
    "[ ! -f \"/etc/apt/sources.list.d/atom.list\" ]"
}

function testAtomInstallation() {
  if [ -n "$SHREAD_TEST__ATOM_SKIP_INSTALL" ]; then
    startSkipping
  fi;
  sudo bash public/unix/debian/install/atom/en.sh

  # atom and apm binaries must be available after installation
  assertNotNull \
    "atom binary not available after atom install" \
    "$(command -v atom)"
  assertNotNull \
    "apm binary not available after atom install" \
    "$(command -v atom)"

  # package repository file must exists after installation
  assertTrue \
    "'/etc/apt/sources.list.d/atom.list' not exists after atom install" \
    "[ -f \"/etc/apt/sources.list.d/atom.list\" ]"
}

. ./scripts/shunit2
