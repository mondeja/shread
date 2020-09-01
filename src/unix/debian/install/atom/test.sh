#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function testAtomIsNotInstalled() {
  _ATOM_BINARY_PATH="$(command -v atom)"
  if [ "$_ATOM_BINARY_PATH" != "" ] && [ "$SHREAD_TEST__ATOM_MUST_BE_NOT_INSTALLED" != "true" ]; then
    startSkipping
  fi;

  # Package manager binary doesn't exists
  _APM_BINARY_PATH="$(command -v apm)"
  assertNull "$_APM_BINARY_PATH"

  # Package repository must not exists
  assertTrue "[ -f \"/etc/apt/sources.list.d/atom.list\" ]"
}

#function testAtomInstallation() {}

. ./scripts/shunit2
