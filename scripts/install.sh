#!/bin/bash
# -*- ENCODING: UTF-8 -*-

PYTHON_BINARY="$(command -v python3)"

# Create virtualenv if doesn't exists
if [ -d venv ]; then
  source venv/bin/activate
  rm -rf venv
fi;

if [ ! -d venv ]; then
  "$PYTHON_BINARY" -c "import virtualenv"
  _VIRTUALENV_MODULE_NOT_INSTALLED=$?
  if [ "$_VIRTUALENV_MODULE_NOT_INSTALLED" -ne 0 ]; then
    printf "You need to install Python3 virtualenv module first." >&2
    exit 1
  fi;
  python3 -m virtualenv venv > /dev/null || exit $?
fi;
source venv/bin/activate

# Install mako
"venv/bin/python3" -m pip install -r requirements.txt > /dev/null
