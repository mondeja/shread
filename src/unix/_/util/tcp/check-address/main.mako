<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_MUST_SPECIFY_ADDRESS="You must specify an address with the parameter"
</%block>

<%block name="vars">
_ADDRESS=""
_MAX_ATTEMPTS=40
_SLEEP=1
_PRINTF_BETWEEN_SLEEPS=""
_INSECURE=""
</%block>

<%block name="usage_opts">[-k] [-a ADDRESS] [-m MAX_ATTEMPTS] [-s SECONDS] [-p PRINT_BETWEEN_SLEEPS]</%block>
<%block name="usage_desc">
  Check if a TCP address is operative through HTTP using curl.
</%block>
<%block name="usage_opts_desc">
  -a, --address ADDRESS             Endpoint to check if is operative.
  -m, --max-attempts ATTEMPTS       Maximum number of attemps checking if the provided address is operative. As default 40.
  -s, --sleep SECONDS               Number of seconds to sleep between attempts. As default 1.
  -p, --print-between-sleeps        String to printf between attemps (before sleep).
  -k, --insecure                    Perform insecure SSL connection (passes '--insecure' to curl command).</%block>

<%block name="argparse">
    -a|--address)
    shift
    _ADDRESS=$1
    shift
    ;;

    -m|--max-attempts)
    shift
    _MAX_ATTEMPTS=$1
    shift
    ;;

    -s|--sleep)
    shift
    _SLEEP=$1
    shift
    ;;

    -p|--print-between-sleeps)
    shift
    _PRINTF_BETWEEN_SLEEPS=$1
    shift
    ;;

    --insecure)
    _INSECURE="--insecure"
    shift
    ;;
</%block>

<%block name="script">
if [ -z "$_ADDRESS" ]; then
  printIndent >&2
  printf "%s --address" "$_MSG_MUST_SPECIFY_ADDRESS" >&2
  exit 1
fi;

if [ "$(command -v pacman)" = "" ]; then
  if [ -z "$_SCRIPT_FILENAME" ]; then
    filepath="src/unix/_/download/pacapt/main.sh"
    bash "$filepath" > /dev/null
  else
    url="https://mondeja.github.io/shread/unix/_/download/pacapt/$_SCRIPT_FILENAME"
    curl -sL "$url" | sudo bash - > /dev/null
  fi;
fi;

if [[ "$(sudo pacman -Qi curl 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
  sudo pacman -S -- -y curl > /dev/null || exit $?
fi;

until curl -sL --output /dev/null "$_INSECURE" --head --fail "$_ADDRESS"; do
  printf "%s" "$_PRINTF_BETWEEN_SLEEPS"
  sleep "$_SLEEP"
  _ATTEMPTS="$(("$_ATTEMPTS" + 1))"
  if [ "$_ATTEMPTS" -gt "$_MAX_ATTEMPTS" ]; then
    exit 1
  fi;
done
</%block>