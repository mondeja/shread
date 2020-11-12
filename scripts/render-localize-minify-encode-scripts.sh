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

      # Retrieve hardcoded msgids from compendium (usage section)
      USAGE_MSGSTR="$(
        grep -i -A 1 'msgid "Usage:"' "$COMPENDIUM_FILEPATH" \
        | tail -n 1 \
        | cut -d'"' -f2- \
        | sed 's/.$//')"
      OPTIONS_MSGSTR="$(
        grep -i -A 1 'msgid "Options:"' "$COMPENDIUM_FILEPATH" \
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
            elif [ "$line" != "" ]; then
              # Remove spaces at beggining
              MSGID="${line#"${line%%[![:space:]]*}"}"

              # Get spaces at the beggining
              _spaces_at_start="$(printf '   a' | grep -Eo '^ *')"

              MSGSTR=$(
                grep -i -A 1 "msgid \"$MSGID\"" "$po_filepath" \
                | tail -n 1 \
                | cut -d'"' -f2- | \
                sed 's/.$//')
              if [ "$MSGSTR" = "" ]; then
                MSGSTR="$MSGID"
              fi;

              line_output="$_spaces_at_start$MSGSTR"
            fi;
          elif [ "$_inside_options" -eq 1 ]; then
            # TODO: translate options section

            if [ "$line" = "HELP_USAGE" ]; then
              # exit options section, all parsed
              _inside_options=0
              _sections_parsed=1
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
              MSGID="$(printf "%s" "$MSGID" | sed 's/^ | *$//')"

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
        # skip HELP_USAGE sections stripping new lines

        if [ "$lang" != "en" ]; then
          # Replace hardcoded messages inside localized script ("Usage:"
          # and "Options:")
          if [[ $line == Usage:* ]]; then
            new_temp_localized_script_output="$new_temp_localized_script_output
$USAGE_MSGSTR $(printf "%s" "$line" | cut -d' ' -f2-)"
          elif [[ $line == Options:* ]]; then
            new_temp_localized_script_output="$new_temp_localized_script_output
$OPTIONS_MSGSTR"
          else
            new_temp_localized_script_output="$new_temp_localized_script_output
$line"
          fi;
        else
          new_temp_localized_script_output="$new_temp_localized_script_output
$line"
        fi;
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
