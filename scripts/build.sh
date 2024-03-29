#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Build shread reading the source from 'src/' directory and storing"
  printf "  the build into 'public/'.\n  This process involves several steps:\n"
  printf "    1. Remove 'public/' directory, if exists.\n"
  printf "    2. Create 'public/' directory.\n"
  printf "    3. Mirror the directory tree of 'src/' into 'public/' skipping"
  printf " directories starting with '__'.\n"
  printf "    4. Creates output scripts rendering from mako templates (if"
  printf " needed), localizing, minifying and encoding them as base64.\n"
  printf "    5. Stores other files that are not scripts inside 'public/'.\n"
  printf "    6. Creates a 'list.txt' file inside the root of 'public/'"
  printf " directory that lists all scripts generated by shread.\n\n"
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

function main() {
  rm -rf public && mkdir public

  # Install
  bash scripts/install.sh

  # Create directory tree
  bash scripts/create-directory-tree.sh

  # Localize, minify and encode as base64 Bash scripts
  bash scripts/render-localize-minify-encode-scripts.sh

  # Create index file
  bash scripts/create-list-txt-file.sh
}

main
