#!/bin/bash

rm -rf public
if [ ! -d "public" ]; then
  mkdir public
fi;

# Create index file
node scripts/create-list-txt-file.js

# Create directory tree
bash scripts/create-directory-tree.sh

# Extract strings for localization
bash scripts/extract-locale-strings.sh
bash scripts/minify-and-encode-scripts-as-base64.sh
