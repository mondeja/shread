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
  if [ -f "/etc/apt/sources.list.d/atom.list" ]; then
    startSkipping
  fi;

  # Not perform installation, only asserts that atom package is available
  source public/unix/debian/install/atom/en.sh
  assertNotNull \
    "atom version not available after installation script sourcing" \
     "$ATOM_VERSION"

  # package repository file must exists after installation
  assertTrue \
    "'/etc/apt/sources.list.d/atom.list' not exists after atom install" \
    "[ -f \"/etc/apt/sources.list.d/atom.list\" ]"
}

. ./scripts/shunit2
