#!/bin/bash

if [ ! -d public ]; then
  bash scripts/build.sh
fi;

if [ ! -f scripts/shunit2 ]; then
  bash public/unix/_/download/shunit/en.sh \
    --dest-path "scripts/shunit2" > /dev/null || exit $?
fi;
SHUNIT_VERSION=$(cat scripts/shunit2 | grep "SHUNIT_VERSION=" | cut -d"'" -f2)
printf "Using shunit2 v$SHUNIT_VERSION\n\n"

find src -iname "test.sh" | while read filepath; do
  bash "$filepath"
done;
