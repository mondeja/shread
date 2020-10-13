#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Move files that are not Bash scripts to public directory
find src -type f -not -name '*.sh' -not -name '*.po' -not -name '*.mo' -not -name '*.mako' | while read -r file; do
  relative_path_to_file_from_src="${file:4:${#file}}"
  path_to_file_dest="public/$relative_path_to_file_from_src"

  cp "$file" "$path_to_file_dest"
done
