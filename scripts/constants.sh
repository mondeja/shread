#!/bin/bash

PUBLIC_URL="https://mondeja.github.io/shread"

SHREAD_VERSION="0.0.1"

SUPPORTED_LANGUAGES=(
  "es"
)

_MAINTAINER_NAME="Álvaro Mondéjar Rubio"
_MAINTAINER_EMAIL="mondejar1994@gmail.com"

_YEAR_NOW=$(date +%Y)
_DATE_UTC_FORMAT=$(date "+%F %T%z")

export PUBLIC_URL
export SHREAD_VERSION
export SUPPORTED_LANGUAGES
export _MAINTAINER_NAME
export _MAINTAINER_EMAIL
export _YEAR_NOW
export _DATE_UTC_FORMAT
