#!/bin/bash
# -*- ENCODING: UTF-8 -*-

<%block name="msgs"/>

<%block name="prepare"/>

INDENT_STRING=""
<%block name="vars"/>

function usage {
    cat <<HELP_USAGE
${script_filepath} <%block name="usage"/>
HELP_USAGE
    exit 1
}

for arg in "$@"; do
  case $arg in
    --indent)
    shift
    INDENT_STRING=$1
    shift
    ;;
    -h|--help)
    shift
    usage
    ;;
    <%block name="argparse"/>
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
