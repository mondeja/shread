#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Installs project dependencies.\n\n"
  printf "Options:\n"
  printf "  -h, --help                    Show this help message and exit.\n"
  exit 1
}

for arg in "$@"; do
  case $arg in
    -h|--help)
    shift
    usage
    ;;
  esac
done

PYTHON_BINARY="$(command -v python3)"

if [ "$JEKYLL_ENV" = "production" ]; then
  $PYTHON_BINARY -m pip install -r requirements.txt
else
  $PYTHON_BINARY -m pip install -q -r requirements.txt
fi;
