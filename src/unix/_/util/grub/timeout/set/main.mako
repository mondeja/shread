<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_SETTING_GRUB_TIMEOUT="Setting boot timeout for Grub"
_MSG_GRUB_FILE_NOT_FOUND="Grub configuration file not found"
</%block>

<%block name="vars">
_NEW_TIMEOUT="10"
_CONFIG_FILEPATH="/etc/default/grub"
</%block>

<%block name="usage_opts">[-t TIMEOUT] [-f CONFIG_FILE]</%block>
<%block name="usage_desc">
  Defines a new timeout for GRUB boot prompt.
</%block>
<%block name="usage_opts_desc">
  -t, --timeout TIMEOUT             New timeout for the GRUB boot prompt, by default $_NEW_TIMEOUT.
  -f, --config-filepath FILEPATH    Path of the GRUB configuration file, by default '$_CONFIG_FILEPATH'.</%block>

<%block name="argparse">
    -t|--timeout)
    shift
    _NEW_TIMEOUT="$(printf "%s" "$1" | sed -e 's/[[:space:]]*//g')"
    shift
    ;;

    -f|--config-filepath)
    shift
    _CONFIG_FILEPATH=$1
    shift
    ;;
</%block>

<%block name="script">
function checkGrubFileExists() {
  if [ ! -f "$_CONFIG_FILEPATH" ]; then
    printIndent
    printf "%s (%s)" "$_MSG_GRUB_FILE_NOT_FOUND" "$_CONFIG_FILEPATH" >&2
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    exit 1
  fi;
}

function setNewGrubTimeout() {
  printIndent
  printf "%s (%s)..." "$_MSG_SETTING_GRUB_TIMEOUT" "$_NEW_TIMEOUT"
  _GRUB_TIMEOUT_CONFIG_EXISTS="$( grep "GRUB_TIMEOUT=" < "$_CONFIG_FILEPATH")"
  if [ "$_GRUB_TIMEOUT_CONFIG_EXISTS" = "" ]; then
    printf "\nGRUB_TIMEOUT=%s\n" "$_NEW_TIMEOUT" >> "$_CONFIG_FILEPATH"
  else
    _CURRENT_TIMEOUT="$(
      (grep "GRUB_TIMEOUT=" | cut -d'=' -f2) < "$_CONFIG_FILEPATH" )"
    if [ "$_CURRENT_TIMEOUT" != "$_NEW_TIMEOUT" ]; then
      sed -i "s/GRUB_TIMEOUT=[0-9]*/GRUB_TIMEOUT=$_NEW_TIMEOUT/" "$_CONFIG_FILEPATH"
    fi;
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function main() {
  checkGrubFileExists
  setNewGrubTimeout
}
</%block>
