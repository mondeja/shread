#!/bin/bash

PUBLIC_URL="https://mondeja.github.io/shread"
export PUBLIC_URL

SHREAD_VERSION="0.0.1"
export SHREAD_VERSION

SUPPORTED_LANGUAGES=(
  "es"
)
export SUPPORTED_LANGUAGES

_YEAR_NOW=$(date +%Y)
export _YEAR_NOW
_DATE_UTC_FORMAT=$(date "+%F %T%z")
export _DATE_UTC_FORMAT
