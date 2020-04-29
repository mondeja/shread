#!/bin/bash

SHREAD_VERSION=$(cat package.json | grep version | cut -d' ' -f4 | tr -d '",')

SUPPORTED_LANGUAGES=(
  "es"
)

_YEAR_NOW=$(date +%Y)
_DATE_UTC_FORMAT=$(date "+%F %T%z")
