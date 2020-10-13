#!/bin/bash
# -*- ENCODING: UTF-8 -*-

rm -rf public
if [ ! -d "public" ]; then
  mkdir public
fi;

# Install
bash scripts/install.sh

# Create directory tree
bash scripts/create-directory-tree.sh

# Localize, minify and encode as base64 Bash scripts
bash scripts/render-localize-minify-encode-scripts.sh

# Move other files than Bash scripts to public directory
bash scripts/move-no-scripts.sh

# Create index file
bash scripts/create-list-txt-file.sh

# If development (default), create Gemfile for debug with Jekyll
if [ "$JEKYLL_ENV" != "production" ]; then
  bash scripts/create-gemfile.sh
fi;
