<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_LEAVING_PORTS_FREE="Leaving ports free of processes..."
</%block>

<%block name="vars">
_PORTS_STRING=""
</%block>

<%block name="usage_opts">[-p PORT1,PORT2...]</%block>
<%block name="usage_desc">
  Kills all the processes running in the system that are using the ports specified with the parameter '--ports'.
</%block>
<%block name="usage_opts_desc">
  -p PORT1,PORT2..., --ports PORT1,PORT2...
                                    List of ports separated by commas which process will be terminated.
</%block>

<%block name="argparse">
    -p|--ports)
    shift
    _PORTS_STRING=$1
    shift
    ;;
</%block>

<%block name="script">
function installPacmanIfNotInstalled() {
  if [ "$(command -v pacman)" = "" ]; then
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
}

function installScriptDependencies() {
  installPacmanIfNotInstalled
  if [[ "$(sudo pacman -Qi net-tools 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
    sudo pacman -S net-tools > /dev/null || exit $?
  fi;
}


function main {
  installScriptDependencies

  printIndent
  printf "%s...\n" "$_MSG_LEAVING_PORTS_FREE"
  _PORTS=$(echo "$_PORTS_STRING" | tr "," "\n")
  for PORT in $_PORTS; do
    printIndent
    printf "  %s" "$PORT"
    UNKNOWN_SERVICE_PID=$(
      sudo netstat -nlp | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:$PORT|\:\:\:$PORT" | \
      awk '{print $7}' | \
      sed -e "s/\/.*//g")
    if [[ -n "$UNKNOWN_SERVICE_PID" ]]; then
      # lo detenemos
      sudo kill "$UNKNOWN_SERVICE_PID"
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}
</%block>
