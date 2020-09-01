#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function testAtomIsNotInstalled() {
  _ATOM_BINARY_PATH="$(command -v atom)"
  if [ -z "$_ATOM_BINARY_PATH" ] && [ "$SHREAD_TEST__ATOM_MUST_NOT_BE_INSTALLED" != "true" ]; then
    startSkipping
  fi;

  printf "atom not found"

  # Package manager binary doesn't exists
  _APM_BINARY_PATH="$(command -v apm)"
  assertNull "$_APM_BINARY_PATH"

  printf "apm not found"

  # Package repository must not exists
  assertTrue "[ ! -f \"/etc/apt/sources.list.d/atom.list\" ]"
}

#function testAtomInstallation() {}

. ./scripts/shunit2
