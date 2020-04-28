#!/bin/bash

find src -type d | while read line; do
  relative_path_to_folder_from_src="${line:4:${#line}}"
  path_to_folder_dest="public/$relative_path_to_folder_from_src"

  if [ ! -d $path_to_folder_dest ]; then
    mkdir $path_to_folder_dest
  fi;
done
