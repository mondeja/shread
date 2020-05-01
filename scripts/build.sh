#!/bin/bash

rm -rf public
if [ ! -d "public" ]; then
  mkdir public
fi;

# Create directory tree
bash scripts/create-directory-tree.sh

# Localize, minify and encode as base64 Bash scripts
bash scripts/localize-minify-encode-scripts.sh

# Move no Bash scripts to public directory
bash scripts/move-no-sh-scripts.sh

# Create index file
node scripts/create-list-txt-file.js
