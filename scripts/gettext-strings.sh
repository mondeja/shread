#!/bin/bash

source scripts/constants.sh

: '
  $1 - Directory path.
  $2 - Language code.
  $3 - Script filename.
  $4 - Created file extension.
'
function createPoLanguageFile() {
  cat << EOF > $1/$2.$4
# $2 translation of shread '$1/$2' file.
# Copyright © $_YEAR_NOW shread.
# This file is distributed under the same license as shread.
# Álvaro Mondéjar Rubio <mondejar1994@gmail.com>, 2020.
#
msgid ""
msgstr ""
"Project-Id-Version: $SHREAD_VERSION\n"
"Report-Msgid-Bugs-To: \n"
"POT-Creation-Date: $_DATE_UTC_FORMAT\n"
"PO-Revision-Date: $_DATE_UTC_FORMAT\n"
"Last-Translator: \n"
"Language-Team: $2\n"
"Language: $2\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=utf-8\n"
"Content-Transfer-Encoding: 8bit\n"
"Plural-Forms: nplurals=2; plural=(n != 1);\n"
EOF
}

find src -iname "*.sh" | while read filepath; do
  dirpath=$(dirname "${filepath}")
  filename=$(basename "${filepath}")

  # Iterate for language codes
  for lang in "${SUPPORTED_LANGUAGES[@]}"; do
    # If .po file doesn't exists, create it
    if [ ! -f "$dirpath/$lang.po" ]; then
      createPoLanguageFile "$dirpath" "$lang" "$filename" "po"
    fi;

    # Create a .pot file with for new translations
    rm -f "$dirpath/$lang.pot"
    createPoLanguageFile "$dirpath" "$lang" "$filename" "pot"

    # Insert new translations into .pot file
    _N_STRINGS_EXTRACTED=0

    # Iterate over lines inside script
    while IFS= read -r line; do
      # If we've found a message
      if [[ $line = _MSG* ]]; then
        # Extract msgid
        MSG_VARIABLE_SPLIT=(${line//\"/ })
        MSG_SPLITTED_LENGTH="${#MSG_VARIABLE_SPLIT[@]}"
        MSGID=""
        for i in `seq 1 $MSG_SPLITTED_LENGTH`; do
          MSGID="${MSGID} ${MSG_VARIABLE_SPLIT[$i]}"
        done

        # Insert msgid into .pot file
        printf "\nmsgid \"$MSGID\"\nmsgstr \"\"" >> "$dirpath/$lang.pot"

        let "_N_STRINGS_EXTRACTED++"
      fi;
    done < $filepath

    if [ $_N_STRINGS_EXTRACTED -gt 0 ]; then
      # Merge new messages into .po file
      _MSGMERGE_OUTPUT=$(
        msgmerge \
          "$dirpath/$lang.po" \
          "$dirpath/$lang.pot" \
          --update \
          2>&1 > /dev/null)
      _MSGMERGE_EXIT_CODE=$?
      if [ $_MSGMERGE_EXIT_CODE -ne 0 ]; then
        printf "$_MSGMERGE_OUTPUT" >&2
        exit $_MSGMERGE_EXIT_CODE
      fi;
    else
      rm -f "$dirpath/$lang.pot"
    fi;

    # Remove temporal files
    rm -f "$dirpath/$lang.po~" "$dirpath/$lang.pot"
  done;

  break;
done
