<%inherit file="bash-script.base.mako"/>

<%block name="pre_script_arguments">
_DEST_PATH="/usr/bin/hello"
</%block>

<%block name="script_arguments">
    --dest-path)
    shift
    _DEST_PATH=$1
    shift
    ;;
</%block>

<%block name="script">
function main() {
  echo "HELLO"
}

function exportVariables() {
  export _DEST_PATH
}
</%block>
