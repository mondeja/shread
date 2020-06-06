#!/bin/bash

if [ ! -d public ]; then
  bash scripts/build.sh
fi;

if [ ! -f scripts/shunit2 ]; then
  bash public/unix/_/download/shunit/en.sh \
    --dest-path "scripts/shunit2" > /dev/null || exit $?
fi;
SHUNIT_VERSION=$(< scripts/shunit2 grep "SHUNIT_VERSION=" | cut -d"'" -f2)
printf "Using shunit2 v%s\n\n" "$SHUNIT_VERSION"

_EXIT_CODE=0
printf "%s\n" "$(find src -iname "test.sh")" > /tmp/files-to-test.txt
while read -r filepath; do
  printf "%s" "---------------------------------------------------------"
  printf "\n\$ bash %s\n\n" "$filepath"
  bash "$filepath"
  _TEST_EXIT_CODE=$?
  if [ $_TEST_EXIT_CODE -ne 0 ]; then
    _EXIT_CODE=1
  fi;
done < /tmp/files-to-test.txt;
exit $_EXIT_CODE
