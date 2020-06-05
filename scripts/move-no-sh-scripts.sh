#!/bin/bash

# Move files that are not Bash scripts to public directory
find src -type f -not -name '*.sh' -not -name '*.po' -not -name '*.mo' | while read file; do
  relative_path_to_file_from_src="${file:4:${#file}}"
  path_to_file_dest="public/$relative_path_to_file_from_src"

  cp $file $path_to_file_dest
done