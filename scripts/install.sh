#!/bin/bash
# -*- ENCODING: UTF-8 -*-

PYTHON_BINARY="$(command -v python3)"

if [ "$JEKYLL_ENV" = "production" ]; then
  $PYTHON_BINARY -m pip install -r requirements.txt
else
  $PYTHON_BINARY -m pip install -q -r requirements.txt
fi;
