#!/bin/bash
# -*- ENCODING: UTF-8 -*-

<%block name="msgs"/>

<%block name="prepare"/>

INDENT_STRING=""
<%block name="vars"/>

function usage {
    cat <<HELP_USAGE
Usage: ${script_filepath}/<%text>$_SCRIPT_FILENAME</%text> [-h] [-i STRING] <%block name="usage_opts"/>
<%block name="usage_desc"/>
Options:
  -h, --help                        Show this help message and exit.
  -i STRING, --indent STRING        Each line of the script output will be preceded with the string defined in this parameter.<%block name="usage_opts_desc"/>

HELP_USAGE
    exit 1
}

for arg in "$@"; do
  case $arg in
    -i|--indent)
    shift
    INDENT_STRING="$1"
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
