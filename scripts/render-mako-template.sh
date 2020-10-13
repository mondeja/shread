#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h] [-f template.mako] [-o script.sh]\n\n" "$0"
  printf "  Renders a Mako template to a file using shread environment.\n\n"
  printf "  -h, --help              Show this help message and exit.\n"
  printf "  -t, --template          Filepath of template to render.\n"
  printf "  -o, --output            Filepath of output file.\n"
  printf "  -sn, --script-name      Name of the produced script, as will be"
  printf " shown executing it with --help command.\n"
  exit 1
}

_TEMPLATE_FILEPATH=""
_OUTPUT_FILEPATH=""
_SCRIPT_NAME=""

for arg in "$@"; do
  case $arg in
    -h|--help)
    shift
    usage
    ;;
    -t|--template)
    shift
    _TEMPLATE_FILEPATH="$1"
    shift
    ;;
    -o|--output)
    shift
    _OUTPUT_FILEPATH="$1"
    shift
    ;;
    -sn|--script-name)
    shift
    _SCRIPT_NAME="$1"
    shift
    ;;
  esac
done

if [ -z "$_SCRIPT_NAME" ]; then
  _SCRIPT_NAME="$_OUTPUT_FILEPATH"
fi;

source venv/bin/activate && echo "import os

from mako.lookup import TemplateLookup
from mako.template import Template

data = {
    'script_filepath': '$_SCRIPT_NAME',
}

lookup = TemplateLookup(directories=[
    '$(dirname "$PWD")',
    os.path.join('$PWD', 'templates')
])
template = Template(filename='$(basename "$_TEMPLATE_FILEPATH")',
                    lookup=lookup)
output = template.render(**data)

if os.path.exists('$_OUTPUT_FILEPATH'):
    os.remove('$_OUTPUT_FILEPATH')
with open('$_OUTPUT_FILEPATH', 'w') as f:
    f.write(output)
" | python3 || exit $?
