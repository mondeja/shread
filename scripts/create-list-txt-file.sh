#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Creates a text file that includes all public scripts URLs.\n\n"
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

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

touch public/list.txt

EXTENTIONS=(
  "sh"
)

for ext in "${EXTENTIONS[@]}"; do
  find public -type f -name "*.$ext" | while read -r script_filepath; do
    relative_path_to_script_from_public="${script_filepath:7:${#script_filepath}}"

    echo "$PUBLIC_URL/$relative_path_to_script_from_public" >> public/list.txt
  done;
done;
