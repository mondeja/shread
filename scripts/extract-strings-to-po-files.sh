#!/bin/bash

source scripts/constants.sh

COMPENDIUM_DIRPATH="src/__compendium/"

: '
  $1 - Directory path.
  $2 - Language code.
  $3 - Script filename.
  $4 - Created file extension.
  $5 - "1" if compendium, "0" if not.
'
function createPoLanguageFile() {
  if [ "$5" = "1" ]; then
    PO_FIRST_LINE="# $2 compedium of shread."
  else
    PO_FIRST_LINE="# $2 translation of shread '$1/$2.sh' file."
  fi
  cat << EOF > $1/$2.$4
$PO_FIRST_LINE
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

  if [ "$filename" != "main.sh" ]; then
    continue
  fi;

  printf "."

  # Iterate over language codes
  for lang in "${SUPPORTED_LANGUAGES[@]}"; do
    # If compendium for this language doesn't exists, create it
    if [ ! -f "$COMPENDIUM_DIRPATH/$lang.po" ]; then
      createPoLanguageFile "$COMPENDIUM_DIRPATH" "$lang" "" "po" "1"
    fi;

    # If .po file doesn't exists, create it
    if [ ! -f "$dirpath/$lang.po" ]; then
      createPoLanguageFile "$dirpath" "$lang" "$filename" "po" "0"
    fi;

    # Create a .pot file with for new translations
    rm -f "$dirpath/$lang.pot"
    createPoLanguageFile "$dirpath" "$lang" "$filename" "pot" "0"

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
        # Trim spaces at the beggining and the end
        MSGID="$(echo $MSGID | sed 's/^ | *$//')"

        # Insert msgid into .pot file
        #   msgstr is initialized with a space because, if initialized
        #   without content, there not will be included merging in
        #   compendium. At the end of the translation file loop will empty
        printf "\nmsgid \"$MSGID\"\nmsgstr \" \"" >> "$dirpath/$lang.pot"

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
          --compendium "$COMPENDIUM_DIRPATH/$lang.po" \
          --no-fuzzy-matching \
          --width=99999 \
          2>&1 > /dev/null)
      _MSGMERGE_EXIT_CODE=$?
      if [ $_MSGMERGE_EXIT_CODE -ne 0 ]; then
        printf "$_MSGMERGE_OUTPUT" >&2
        exit $_MSGMERGE_EXIT_CODE
      fi;
    else
      rm -f "$dirpath/$lang.pot"
    fi;

    # Update compendium for the language
    _MSGMERGE_OUTPUT=$(
      msgmerge \
        "$COMPENDIUM_DIRPATH/$lang.po" \
        "$dirpath/$lang.po" \
        --update \
        --no-fuzzy-matching \
        2>&1 > /dev/null)
    _MSGMERGE_EXIT_CODE=$?
    if [ $_MSGMERGE_EXIT_CODE -ne 0 ]; then
      printf "$_MSGMERGE_OUTPUT" >&2
      exit $_MSGMERGE_EXIT_CODE
    fi;
    sed -i 's/^\#~ //' "$COMPENDIUM_DIRPATH/$lang.po"

    # Remove temporal files
    rm -f "$dirpath/$lang.po~" \
      "$dirpath/$lang.pot" \
      "$COMPENDIUM_DIRPATH/$lang.po~"

    # Convert `msgstr " "` messages to `msgstr ""` bacause with a space,
    #   the translations will not be updated from compendium at next execution
    sed -i 's/^msgstr " "/msgstr ""/' "$dirpath/$lang.po"
  done;
done;

# Iterate over language codes
for lang in "${SUPPORTED_LANGUAGES[@]}"; do
  if [ -f "$COMPENDIUM_DIRPATH/$lang.po" ]; then
    # Convert `msgstr " "` messages to `msgstr ""` in compendium
    sed -i 's/^msgstr " "/msgstr ""/' "$COMPENDIUM_DIRPATH/$lang.po"
  fi;
done;

printf "\n"
