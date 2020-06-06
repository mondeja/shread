#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

# Add english to SUPPORTED_LANGUAGES
SUPPORTED_LANGUAGES+=('en')

find src -type f -name '*.sh' | while read -r script_filepath; do
  # Ignore scripts with other names than `main.sh`
  script_filename=$(basename "$script_filepath")
  if [ "$script_filename" != "main.sh" ]; then
    continue
  fi;

  printf "."

  # Relative path to `main.sh` scripts from `src/`
  relative_path_to_script_from_src="${script_filepath:4:${#script_filepath}}"
  # Relative path to `main.sh` directories from `src/`
  relative_path_to_script_dir_from_src=$(
    dirname "$relative_path_to_script_from_src")

  # Iterate for language codes
  for lang in "${SUPPORTED_LANGUAGES[@]}"; do

    # If language po file doesnt exists
    po_filepath="src/$relative_path_to_script_dir_from_src/$lang.po"

    # Create temporal localized script
    temp_localized_script="src/$relative_path_to_script_dir_from_src/$lang.sh"
    touch "$temp_localized_script"

    # Copy `main.sh` script content localizing messages
    if [ "$lang" != "en" ]; then
      while IFS= read -r line; do
        # If the line contains a message
        line_output=$line
        if [[ $line = _MSG* ]]; then
          # Get msgid
          # shellcheck disable=SC2206
          MSG_VARIABLE_SPLIT=(${line//\"/ })
          MSG_SPLITTED_LENGTH="${#MSG_VARIABLE_SPLIT[@]}"
          MSGID=""
          # shellcheck disable=SC2006
          for i in `seq 1 "$MSG_SPLITTED_LENGTH"`; do
            MSGID="${MSGID} ${MSG_VARIABLE_SPLIT[$i]}"
          done
          # Trim spaces at the beggining and the end
          # shellcheck disable=SC2001,SC2086
          MSGID="$(echo $MSGID | sed 's/^ | *$//')"

          # Get msgstr
          MSGSTR_LINE=$(< "$po_filepath" grep -A 1 "msgid \"$MSGID\"" | tail -n 1)
          MSGSTR_LINE_LENGHT=${#MSGSTR_LINE}
          MSGSTR_LINE_NDEL="$((MSGSTR_LINE_LENGHT-9))"
          MSGSTR=${MSGSTR_LINE:8:$MSGSTR_LINE_NDEL}

          # Replace variable in for message
          # shellcheck disable=SC2128
          line_output="${MSG_VARIABLE_SPLIT}\"${MSGSTR}\""
        fi;
        echo "$line_output" >> "$temp_localized_script"
      done < "$script_filepath"
    else
      cat "$script_filepath" >> "$temp_localized_script"
    fi;

    # Delete comments and empty lines
    sed -i '/^[[:blank:]]*#/d;s/#.*//' "$temp_localized_script"
    sed -i '/^$/d' "$temp_localized_script"

    path_to_script_dest="public/$relative_path_to_script_dir_from_src/$lang.sh"
    rm -f "$path_to_script_dest"
    touch "$path_to_script_dest"
    echo "#!/bin/bash" >> "$path_to_script_dest"

    # Encode scripts as base64
    echo "source <(printf '$(base64 -w 0 "$temp_localized_script")' | base64 -d)" \
      >> "$path_to_script_dest"
    rm -f "$temp_localized_script"
  done
done

printf "\n"
