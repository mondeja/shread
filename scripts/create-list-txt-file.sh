#!/bin/bash

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

touch public/list.txt

EXTENTIONS=(
  "sh"
  "js"
)

for ext in "${EXTENTIONS[@]}"; do
  find public -type f -name "*.$ext" | while read -r script_filepath; do
    relative_path_to_script_from_public="${script_filepath:7:${#script_filepath}}"

    echo "$PUBLIC_URL/$relative_path_to_script_from_public" >> public/list.txt
  done;
done;
