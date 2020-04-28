#!/bin/bash

if [ ! -d "public" ]; then
  rm -rf public
  mkdir public
fi;

node scripts/create-list-txt-file.js
bash scripts/create-directory-tree.sh
bash scripts/minify-and-encode-scripts-as-base64.sh
