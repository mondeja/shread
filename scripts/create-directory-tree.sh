#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Creates the same tree directories structures of 'src/' into"
  printf " 'public/' directory.\n\n"
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

find src -type d | while read -r line; do
  relative_path_to_folder_from_src="${line:4:${#line}}"
  path_to_folder_dest="public/$relative_path_to_folder_from_src"

  # Ignore directories that starts with `__`
  if [ "${relative_path_to_folder_from_src:0:2}" = "__" ]; then
    continue
  fi;

  if [ ! -d "$path_to_folder_dest" ]; then
    mkdir "$path_to_folder_dest"
  fi;
done
