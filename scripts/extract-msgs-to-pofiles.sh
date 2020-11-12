#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

COMPENDIUM_DIRPATH="src/__compendium/"

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Extracts source scripts messages and dump them into supported"
  printf " languages pofiles. Scripts messages are those strings setted as"
  printf " values of variables which starts with '_MSG' inside scripts."
  printf " Extracted messages are also dumped into compendium language pofiles,"
  printf " which are located inside '%s' directory.\n\n" "$COMPENDIUM_DIRPATH"
  printf "Options:\n"
  printf "  -h, --help                    Show this help message and exit.\n"
  exit 1
}

for arg in "$@"; do
  case $arg in
    -h|--help)
    shift
    usage
    ;;
  esac
done

: "
  $1 - Directory path.
  $2 - Language code.
  $3 - Script filename.
  $4 - Created file extension.
  $5 - 1 if compendium, 0 if not.
"
function createPoLanguageFile() {
  if [ "$5" = "1" ]; then
    PO_FIRST_LINE="# $2 compedium of shread."
  else
    PO_FIRST_LINE="# $2 translation of shread '$1/$2.sh' file."
  fi
  cat << EOF > "$1/$2.$4"
$PO_FIRST_LINE
# Copyright © $_YEAR_NOW shread.
# This file is distributed under the same license as shread.
# $_MAINTAINER_NAME <$_MAINTAINER_EMAIL>, $_YEAR_NOW.
#
msgid ""
msgstr ""
"Project-Id-Version: $SHREAD_VERSION\n"
"Report-Msgid-Bugs-To: $_MAINTAINER_NAME <$_MAINTAINER_EMAIL>\n"
"POT-Creation-Date: $_DATE_UTC_FORMAT\n"
"PO-Revision-Date: $_DATE_UTC_FORMAT\n"
"Last-Translator: $_MAINTAINER_NAME <$_MAINTAINER_EMAIL>\n"
"Language-Team: $2\n"
"Language: $2\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=utf-8\n"
"Content-Transfer-Encoding: 8bit\n"
"Plural-Forms: nplurals=2; plural=(n != 1);\n"
EOF
}

find src -type f -name "main.mako" | while read -r filepath; do
  dirpath=$(dirname "${filepath}")
  filename=$(basename "${filepath}")

  printf "."

  # Iterate over language codes
  for lang in "${SUPPORTED_LANGUAGES[@]}"; do
    if [ "$lang" = "en" ]; then
      continue
    fi;

    # Create temporal cache for stores all msgids found for every language.
    # Thanks to these files, we can later mark as obsoletes in compendiums
    # those messages not found yet in scripts
    LANG_MSGIDS_CACHE_FILE="/tmp/shread-compendium-$lang-messages.txt"
    if [ ! -f "$LANG_MSGIDS_CACHE_FILE" ]; then
      printf "" > "$LANG_MSGIDS_CACHE_FILE"
    fi;

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

    # Number of strings extracted from this script
    _N_STRINGS_EXTRACTED=0


    # Iterate over lines inside script

    #   inside messages section? (this is an optimization)
    _inside_msgs=0
    while IFS= read -r line; do
      # If we've found a message
      if [[ $line = _MSG* ]]; then
        _inside_msgs=1

        # Extract msgid
        # shellcheck disable=SC2206
        MSG_VARIABLE_SPLIT="${line//\"/ }"
        MSGID=""

        for word in $MSG_VARIABLE_SPLIT; do
          if [[ $word != _MSG* ]]; then
            if [ "$MSGID" = "" ]; then
              MSGID="$word"
            else
              MSGID="${MSGID} $word"
            fi;
          fi;
        done;
        # Trim spaces at the beggining and the end
        # shellcheck disable=SC2001
        MSGID=$(echo "$MSGID" | sed 's/^ | *$//')

        (( _N_STRINGS_EXTRACTED++ ))

        # Hardcoded mmessages (usage section)
        if [ "$MSGID" = "Usage:" ] || [ "$MSGID" = "Options:" ]; then
          continue
        fi;

        # Save every msgid in temporal cache
        printf "%s\n" "$MSGID" >> "$LANG_MSGIDS_CACHE_FILE"

        # Insert msgid into .pot file
        #   msgstr is initialized with a space because, if initialized
        #   without content, there not will be included merging in
        #   compendium. At the end of the translation file loop will empty
        printf "\nmsgid \"%s\"\nmsgstr \" \"" "$MSGID" >> "$dirpath/$lang.pot"
      elif [ "$_inside_msgs" -eq 1 ]; then
        # exit messages section
        break
      fi;
    done < "$filepath"

    # Add hardcoded messages (usage section)
    usage_section_msgids=("Usage:" "Options:")
    for MSGID in "${usage_section_msgids[@]}"; do
      printf "%s\n" "$MSGID" >> "$LANG_MSGIDS_CACHE_FILE"
    done

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
        printf "%s" "$_MSGMERGE_OUTPUT" >&2
        exit $_MSGMERGE_EXIT_CODE
      fi;
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
      printf "%s" "$_MSGMERGE_OUTPUT" >&2
      exit $_MSGMERGE_EXIT_CODE
    fi;
    sed -i 's/^\#~ //' "$COMPENDIUM_DIRPATH/$lang.po"

    # Remove temporal files
    rm -f "$dirpath/$lang.po~" \
      "$dirpath/$lang.pot" \
      "$COMPENDIUM_DIRPATH/$lang.po~"

    if [ $_N_STRINGS_EXTRACTED -eq 0 ]; then
      rm -f "$dirpath/$lang.po"
    else
      # Convert `msgstr " "` messages to `msgstr ""` bacause with a space,
      #   the translations will not be updated from compendium at next execution
      sed -i 's/^msgstr " "/msgstr ""/' "$dirpath/$lang.po"
    fi;
  done;
done;

# Iterate over language codes
for lang in "${SUPPORTED_LANGUAGES[@]}"; do
  if [ "$lang" = "en" ]; then
    continue
  fi;

  if [ -f "$COMPENDIUM_DIRPATH/$lang.po" ]; then
    # Convert `msgstr " "` messages to `msgstr ""` in compendium
    sed -i 's/^msgstr " "/msgstr ""/' "$COMPENDIUM_DIRPATH/$lang.po"

    # Mark messages not found in scripts as obsoletes in compendium
    LANG_MSGIDS_CACHE_FILE="/tmp/shread-compendium-$lang-messages.txt"

    # Remove compendium wrapping to facilitates manipulation
    msgcat "$COMPENDIUM_DIRPATH/$lang.po" --no-wrap --color="no" > \
      "$COMPENDIUM_DIRPATH/$lang.po.bak"

    # Extract msgids from compendium:
    #   - Match msgids
    #   - Remove first line (meta msgid)
    #   - Get all after first '"'
    #   - Remove last character from each line ('"')
    COMPENDIUM_MSGIDS_LINES="$(
      < "$COMPENDIUM_DIRPATH/$lang.po.bak" \
      grep "^msgid" | \
      sed 1d | \
      cut -d'"' -f2- | \
      sed 's/.$//')"
    readarray -t COMPENDIUM_MSGIDS <<< "$COMPENDIUM_MSGIDS_LINES"

    # For each msgid in compedium, check if the msgid has bee found in current
    #   translations

    #   Harcoded messages (usage section)
    _usage_found=0
    _options_found=0
    for COMPENDIUM_MSGID in "${COMPENDIUM_MSGIDS[@]}"; do

      # Check if hardcoded messages (usage section) are in compendium
      if [ "$COMPENDIUM_MSGID" = "Usage:" ]; then
        _usage_found=1
      elif [ "$COMPENDIUM_MSGID" = "Options:" ]; then
        _options_found=1
      fi;

      _FOUND=0
      while IFS= read -r line; do
        if [ "$line" = "$COMPENDIUM_MSGID" ]; then
          _FOUND=1
          break
        fi;
      done < "$LANG_MSGIDS_CACHE_FILE"
      if [ "$_FOUND" -eq 0 ]; then
        # Mark msgid in compendium as obsolete
        NEW_COMPENDIUM_BAK_FILE_CONTENT=""
        _OBSOLETOR=0
        while IFS= read -r line; do
          if [ "$line" = "msgid \"$COMPENDIUM_MSGID\"" ]; then
            _OBSOLETOR=1
          elif [ "$_OBSOLETOR" -eq 1 ] && [ "$line" = "" ]; then
            _OBSOLETOR=0
          fi;
          if [ "$_OBSOLETOR" -eq 1 ]; then
            NEW_COMPENDIUM_BAK_FILE_CONTENT="$NEW_COMPENDIUM_BAK_FILE_CONTENT#~ $line
"
          else
            NEW_COMPENDIUM_BAK_FILE_CONTENT="$NEW_COMPENDIUM_BAK_FILE_CONTENT$line
"
          fi;
        done < "$COMPENDIUM_DIRPATH/$lang.po.bak"
        printf "%s" "$NEW_COMPENDIUM_BAK_FILE_CONTENT" \
          > "$COMPENDIUM_DIRPATH/$lang.po.bak"
      fi;
    done;

    # If usage section messages have not been found in compendium, add them
    if [ "$_usage_found" -eq 0 ]; then
      printf "msgid \"Usage:\"\nmsgstr \"\"\n\n" \
        >> "$COMPENDIUM_DIRPATH/$lang.po.bak"
    fi;
    if [ "$_options_found" -eq 0 ]; then
      printf "msgid \"Options:\"\nmsgstr \"\"\n\n" \
        >> "$COMPENDIUM_DIRPATH/$lang.po.bak"
    fi;

    # Update compendium
    msgcat "$COMPENDIUM_DIRPATH/$lang.po.bak" --color="no" \
      > "$COMPENDIUM_DIRPATH/$lang.po"
    rm "$COMPENDIUM_DIRPATH/$lang.po.bak"

    # Remove msgids cache file
    rm "$LANG_MSGIDS_CACHE_FILE"
  fi;
done;

printf "\n"
