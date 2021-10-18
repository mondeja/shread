#!/bin/bash
# -*- ENCODING: UTF-8 -*-
\
<%block name="msgs"/>\
\
<%block name="prepare"/>\

INDENT_STRING=""
SETX=0
<%block name="vars"/>\

function usage {
    cat <<HELP_USAGE
Usage: ${script_filepath}/<%text>$_SCRIPT_FILENAME</%text> [-h] [-i STRING] <%block name="usage_opts"/>
<%block name="usage_desc"/>
Options:
  -h, --help                        Show this help message and exit.
  -i STRING, --indent STRING        Each line of the script output will be preceded with the string defined in this parameter.
  --set-x                           Sets the -x option in Bash to print out the statements as they are being executed. Useful for debugging purposes.<%block name="usage_opts_desc"/>\

HELP_USAGE
    exit 1
}

for arg in "$@"; do
  case $arg in
    -i|--indent)
    INDENT_STRING="$2"
    shift 2
    ;;
    -h|--help)
    shift
    usage
    ;;\
    --set-x)
    SETX=1
    shift
    ;;\
    <%block name="argparse"/>\
  esac
done

function printIndent() {
  printf "%s" "$INDENT_STRING"
}
\
if [ "$SETX" -eq 1 ]; then set -x; fi
<%block name="script"/>\
\
<%block name="main">
if (return 0 2>/dev/null); then
  exportVariables
else
  main
fi;
</%block>\
if [ "$SETX" -eq 1 ]; then set +x; fi
\
