#!/bin/bash
# -*- ENCODING: UTF-8 -*-

function usage {
  printf "Usage: %s [-h]\n\n" "$0"
  printf "  Performs most of the logic building the 'public/' directory:\n"
  printf "    1. Render mako templates into temporary Bash scripts.\n"
  printf "    2. For each supported language, builds a distribution Bash"
  printf " script inside correspondent directory of 'public/' tree performing"
  printf " next tasks:\n"
  printf "      2.1. Replace original messages with localized pofiles ones.\n"
  printf "      2.2. Append shebangs at start of the script.\n"
  printf "      2.3. Append '_SCRIPT_FILENAME' variable at the start of the"
  printf " script that maintains the script filename in order to render it"
  printf " properly in 'usage' sections printed when passing '--help' option.\n"
  printf "      2.4. Remove all lines that only contain comments and those"
  printf " which are empty.\n"
  printf "      2.5. Encode scripts logic as base64.\n"
  printf "      2.6. Wraps base64 encoded scripts statements with a base64"
  printf " decoder passing all arguments to the decoded script content.\n"
  printf "    3. Store each localized encoded script in their correspondent"
  printf " location of 'public/' directory.\n\n"
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

# shellcheck source=scripts/constants.sh
source scripts/constants.sh

find src -type f -name "main.mako" | while read -r script_filepath; do
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

      COMPENDIUM_FILEPATH="src/__compendium/$lang.po"

      COMPENDIUM_FILEPATH_UNWRAPPED="$(
        msgcat "$COMPENDIUM_FILEPATH" --no-wrap --color="no")"

      # Retrieve hardcoded msgids from compendium (usage section)
      USAGE_MSGSTR="$(
        printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
        | grep -i -A 1 'msgid "Usage:"' \
        | tail -n 1 \
        | cut -d'"' -f2- \
        | sed 's/.$//')"
      OPTIONS_MSGSTR="$(
        printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
        | grep -i -A 1 'msgid "Options:"' \
        | tail -n 1 \
        | cut -d'"' -f2- \
        | sed 's/.$//')"
      HELP_OPTION_DESC_MSGSTR="$(
        printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
        | grep -i -A 1 'msgid "Show this help message and exit."' \
        | tail -n 1 \
        | cut -d'"' -f2- \
        | sed 's/.$//')"
      INDENT_OPTION_DESC_MSGSTR="$(
        printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
        | grep -i -A 1 'msgid "Each line of the script output will be preceded with the string defined in this parameter."' \
        | tail -n 1 \
        | cut -d'"' -f2- \
        | sed 's/.$//')"
      SETX_OPTION_DESC_MSGSTR="$(
        printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
        | grep -i -A 1 'msgid "Sets the -x option in Bash to print out the statements as they are being executed. Useful for debugging purposes."' \
        | tail -n 1 \
        | cut -d'"' -f2- \
        | sed 's/.$//')"

      # inside 'Usage:' section of the help (translation of usage section)
      _inside_usage=0
      # inside 'Options:' section of the help (translation of usage section)
      _inside_options=0

      # All sections have been parsed (optimization)
      _sections_parsed=0

      # Iterate over lines of rendered script
      while IFS= read -r line; do

        line_output=$line
        if [ "$_sections_parsed" -eq 0 ]; then
          if [ "$_inside_usage" -eq 1 ]; then
            if [ "$line" = "Options:" ]; then
              _inside_usage=0
              _inside_options=1

              if [ -n "$OPTIONS_MSGSTR" ]; then
                line_output="$OPTIONS_MSGSTR"
              fi;
            elif [ -n "$line" ]; then
              # Remove spaces at beggining
              MSGID="${line#"${line%%[![:space:]]*}"}"

              # Get spaces at the beggining
              _spaces_at_start="$(printf "%s" "$line" | grep -Eo '^ *')"

              MSGSTR=$(
                grep -i -A 1 "msgid \"$MSGID\"" "$po_filepath" \
                | tail -n 1 \
                | cut -d'"' -f2- | \
                sed 's/.$//')
              if [ -z "$MSGSTR" ]; then
                MSGSTR="$MSGID"
              fi;
              line_output="$_spaces_at_start$MSGSTR"
            fi;
          elif [ "$_inside_options" -eq 1 ]; then
            if [ -n "$HELP_OPTION_DESC_MSGSTR" ] && [ "$line" = "  -h, --help                        Show this help message and exit." ]; then
              line_output="  -h, --help                        $HELP_OPTION_DESC_MSGSTR"
            elif [ -n "$INDENT_OPTION_DESC_MSGSTR" ] && [ "$line" = "  -i STRING, --indent STRING        Each line of the script output will be preceded with the string defined in this parameter." ]; then
              line_output="  -i STRING, --indent STRING        $INDENT_OPTION_DESC_MSGSTR"
            elif [ -n "$SETX_OPTION_DESC_MSGSTR" ] && [ "$line" = "  --set-x                           Sets the -x option in Bash to print out the statements as they are being executed. Useful for debugging purposes." ]; then
              line_output="  --setx                            $SETX_OPTION_DESC_MSGSTR"
            elif [ "$line" = "HELP_USAGE" ]; then
              # exit options section, all parsed
              _inside_options=0
              _sections_parsed=1
            elif [ -n "$line" ]; then
              # Remove spaces from the beggining
              line_lstripped="${line#"${line%%[![:space:]]*}"}"
              # If the first character is a '-', is an option line,
              # otherwise is a description line
              if [ "$(printf "%s" "$line_lstripped" | cut -c1)" = "-" ]; then
                description_lspaced="$(printf "%s\n" "$line_lstripped" | cut -d' ' -f5-)"
                if [ -n "$description_lspaced" ]; then

                  # If description not in new line
                  options_string="$(
                    printf "%s\n" "$line_lstripped" \
                    | cut -d' ' -f1-5 \
                    | awk '{$1=$1};1')"
                  options_string_spaces="$(
                    printf "%s" "$options_string" | sed 's/[^[:space:]]\+//g')"
                  if [ "$options_string_spaces" = "   " ]; then
                    options_string_spaces=" "
                  elif [ "$options_string_spaces" = " " ]; then
                    options_string_spaces="   "
                  elif [ -z "$options_string_spaces" ]; then
                    options_string_spaces="    "
                  fi;

                  _spaces_at_description_start="$(
                    printf "%s" "$description_lspaced" | grep -Eo '^ *')"
                  description_lstripped="${description_lspaced#"${description_lspaced%%[![:space:]]*}"}"

                  MSGID="$description_lstripped"
                  MSGSTR="$(
                    printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
                    | grep -i -A 1 "msgid \"$MSGID\"" \
                    | tail -n 1 \
                    | cut -d'"' -f2- \
                    | sed 's/.$//')"
                  if [ -z "$MSGSTR" ]; then
                    MSGSTR="$MSGID"
                  fi;
                  line_output="  $options_string$options_string_spaces$_spaces_at_description_start$MSGSTR"

                  # Util debugging
                  # printf "LINE:                  '%s'\n" "$line"
                  # printf "LINE LSTRIPPED:        '%s'\n" "$line_lstripped"
                  # printf "DESC LSPACED:          '%s'\n" "$description_lspaced"
                  # printf "DESC LSTRIPPED:        '%s'\n" "$description_lstripped"
                  # printf "OPTIONS STRING:        '%s'\n" "$options_string"
                  # printf "OPTIONS STRING SPACES: '%s'\n" "$options_string_spaces"
                  # printf "SPACES AT DESC START:  '%s'\n" "$_spaces_at_description_start"
                  # printf "MSGID:                 '%s'\n" "$MSGID"
                  # printf "MSGSTR:                '%s'\n" "$MSGSTR"
                  # printf "\n"
                fi;
              else
                MSGID="$line_lstripped"
                MSGSTR="$(
                  printf "%s" "$COMPENDIUM_FILEPATH_UNWRAPPED" \
                  | grep -i -A 1 "msgid \"$MSGID\"" \
                  | tail -n 1 \
                  | cut -d'"' -f2- \
                  | sed 's/.$//')"

                # Get spaces at the beggining
                _spaces_at_start="$(printf "%s" "$line" | grep -Eo '^ *')"
                if [ -z "$MSGSTR" ]; then
                  MSGSTR="$MSGID"
                fi;
                line_output="$_spaces_at_start$MSGSTR"
              fi;
            fi;
          else
            # If the line contains a message
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
              MSGID="$(printf "%s" "$MSGID" | awk '{$1=$1};1')"

              # Get msgstr
              MSGSTR=$(
                grep -i -A 1 "msgid \"$MSGID\"" "$po_filepath" \
                | tail -n 1 \
                | cut -d'"' -f2- | \
                sed 's/.$//')

              # Replace variable in for message
              # shellcheck disable=SC2128
              line_output="${MSG_VARIABLE_SPLIT}\"${MSGSTR}\""
            elif [[ "$line" = Usage:* ]]; then
              # enter usage section
              _inside_usage=1

              if [ -n "$USAGE_MSGSTR" ]; then
                line_output="$USAGE_MSGSTR $(printf "%s" "$line" | cut -d' ' -f2-)"
              fi;
            elif [ "$line" = "HELP_USAGE" ]; then
              # exit other sections, all parsed
              _inside_usage=0
              _inside_options=0
              _sections_parsed=1
            fi;
          fi;
        fi;
        printf "%s\n" "$line_output" >> "$temp_localized_script"
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
  done  # end of SUPPORTED_LANGUAGES loop
done  # end of find scripts loop

printf "\n"
