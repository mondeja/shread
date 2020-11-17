<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_UPDATING_SYSTEM_PACKAGES="Updating system packages..."
</%block>

<%block name="vars">
_UPGRADE=0
</%block>

<%block name="usage_opts">[-u]</%block>
<%block name="usage_desc">
  Updates and optionally upgrades the system if their repository packages have not been updated today.
</%block>
<%block name="usage_opts_desc">
  -u, --upgrade                     Passing this option, if the system has not been updated today, will be upgraded also.
</%block>

<%block name="argparse">
    -u|--upgrade)
    _UPGRADE=1
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

function updatePackages() {
  printIndent
  printf "%s" "$_MSG_UPDATING_SYSTEM_PACKAGES"
  sudo pacman update > /dev/null || exit $?
  if [ $_UPGRADE -eq 1 ]; then
    echo y | sudo pacman -Suy > /dev/null || exit $?
  else
    echo y | sudo pacman -Su > /dev/null || exit $?
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function main {
  installPacmanIfNotInstalled

  if [ -f "/var/cache/apt/pkgcache.bin" ]; then
    _LAST_DAY_EXECUTED=$(
      stat /var/cache/apt/pkgcache.bin | \
      tail -n 3 | \
      head -n 1 | \
      cut -d' ' -f2)
    _NOW_DATE=$(date +"%Y-%m-%d")
    if [ "$_LAST_DAY_EXECUTED" != "$_NOW_DATE" ]; then
      updatePackages
    fi;
  else
    updatePackages
  fi;
}
</%block>
