#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

# Add english to SUPPORTED_LANGUAGES
SUPPORTED_LANGUAGES+=('en')

find src -type f \( -name "main.sh" -o -name "main.mako" \) | while read -r script_filepath; do
  # Ignore scripts with other names than `main.sh` and templates
  # with other name as 'main.mako'
  script_filename=$(basename "$script_filepath")
  script_filedir=$(dirname "$script_filepath")

  # is mako template
  if [ "$script_filename" = "main.mako" ]; then
    # render the template
    bash scripts/render-mako-template.sh \
      -t "$script_filepath" \
      -o "$(echo "$script_filepath" | cut -d'.' -f1)_.sh" \
      -sn "$script_filedir"
    script_filename="main_.sh"
    script_filepath="$script_filedir/$script_filename"
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

    # Delete comments and empty lines skipping HELP_USAGE sections
    new_temp_localized_script_output=""
    _inside_help_usage=0
    _after_help_usage=0
    while IFS= read -r line; do
      if [ $_after_help_usage -eq 0 ]; then
        if [[ $line == *"<<HELP_USAGE"* ]]; then
          _inside_help_usage=1
        elif [[ $line == HELP_USAGE* ]]; then
          _inside_help_usage=0
          _after_help_usage=1
        fi;
      fi;

      if [ $_inside_help_usage -eq 0 ]; then
        # ignore empty lines (or only with spaces)
        if [ -n "${line// }" ]; then
          if [ -z "$new_temp_localized_script_output" ]; then
            new_temp_localized_script_output="$line"
          # remove single line comments
          elif [ "$(printf "%s" "${line// }" | cut -c 1)" = '#' ]; then
            continue
          else
            new_temp_localized_script_output="$new_temp_localized_script_output
$line"
          fi;
        fi;
      else
        # skip HELP_USAGE sections
        new_temp_localized_script_output="$new_temp_localized_script_output
$line"
      fi;
    done < "$temp_localized_script"
    printf "%s" "$new_temp_localized_script_output" > "$temp_localized_script"

    # Add shebangs
    sed -i '1s/^/#!\/bin\/bash\n# -*- ENCODING: UTF-8 -*-\n/' \
      "$temp_localized_script"

    # Add script filename. This is included here because, if the script
    #   is executed from base64 encoded wrapper or from url, the
    #   name can't be retrieved
    sed -i "3s/^/_SCRIPT_FILENAME=$lang.sh\n/" "$temp_localized_script"

    # Build script for distribution in public directory
    path_to_script_dest="public/$relative_path_to_script_dir_from_src/$lang.sh"
    rm -f "$path_to_script_dest"
    touch "$path_to_script_dest"

    #   Encode script as base64
    script_encoded_as_b64="$(base64 -w 0 "$temp_localized_script")"

    #   Write script wrapper
    { echo "#!/bin/bash"; echo "H='$script_encoded_as_b64'"; } \
      >> "$path_to_script_dest"

    tee -a >> "$path_to_script_dest" << END
if (return 0 2>/dev/null); then
  source <(printf "%s" "\$H" | base64 -d)
else
  echo "\$(echo "\$H" | base64 -d)" | bash -s -- "\$@"
fi;
END

    rm -f "$temp_localized_script"
  done
done

printf "\n"
