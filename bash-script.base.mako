#!/bin/bash
# -*- ENCODING: UTF-8 -*-

<%block name="pre_script_arguments"/>

INDENT_STRING=""

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
    <%block name="script_arguments"/>
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}

<%block name="script"/>

<%block name="main">
if (return 0 2>/dev/null); then
  exportVariables
else
  main
fi;
</%block>
