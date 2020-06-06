#!/bin/bash
# -*- ENCODING: UTF-8 -*-

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
