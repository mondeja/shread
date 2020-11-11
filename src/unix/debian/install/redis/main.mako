<%inherit file="/bash-script.base.mako"/>

<%block name="msgs">
_MSG_SETTING_REDIS_ECOSYSTEM="Setting up Redis ecosystem..."
_MSG_CHECKING_BASE_DEPENDENCIES="Checking base dependencies..."
_MSG_RETRIEVING_LASTEST_STABLE_VERSION="Retrieving lastest stable version..."
_MSG_ERROR_RETRIEVING_LASTEST_VERSION_FROM_FILE="An error happen retrieving lastest stable Redis version from file"
_MSG_VERSIONS_FOUND="Versions found:"
_MSG_DOWNLOADING_REDIS="Downloading Redis"
_MSG_BUILDING_SOURCE_CODE="Building source code..."
_MSG_TESTING_BUILD="Testing build..."
_MSG_CHECKING_SERVICE_CONFIG="Checking 'redis' service configuration..."
_MSG_ENABLING="Enabling..."
_MSG_ERROR_ENABLING_SERVICE="An error happen enabling 'redis' service."
_MSG_ERROR="Error"
_MSG_EXIT_CODE="Exit code"
_MSG_ITS_ENABLED="It's enabled"
_MSG_EXECUTING="Executing..."
_MSG_SERVICE_COULDNT_BE_STARTED="The 'redis' service could not be started."
_MSG_ITS_ON_STATE="It's on state"
_MSG_ITS_RUNNING="It's runnning"
_MSG_CREATING_SERVICE="Creating 'redis' service..."
_MSG_CREATING_USER="Creating 'redis' user..."
_MSG_UNZIPPING="Unzipping..."
_MSG_INSTALLING_REDIS="Installing Redis"
_MSG_UPDATING_REDIS="Updating Redis"
_MSG_FOUND_REDIS_INSTALLED="Found Redis installed"
</%block>

<%block name="usage_opts">[-t]</%block>
<%block name="usage_desc">
  Install or update Redis building from source code. Also, generates the redis user and service.
</%block>
<%block name="usage_opts_desc">
  -t, --test                        If passed, Redis build will be tested. This could take a lot of time.
</%block>

<%block name="vars">
# Redis build should be tested?
_TEST=0
</%block>

<%block name="prepare">
_ORIGIN_PWD="$PWD"
</%block>

<%block name="argparse">
    -t|--test)
    _TEST=1
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

  INSTALLATION_DEPENDENCIES=(
    "build-essential"
    "tcl"
    "make"
  )

  for DEP in "<%text>${INSTALLATION_DEPENDENCIES[@]}</%text>"; do
    printIndent
    printf "    %s" "$DEP"
    if [[ "$(sudo pacman -Qi "$DEP" 2> /dev/null | grep Status)" != "Status: install ok installed" ]]; then
      sudo pacman -S -- -y "$DEP" > /dev/null || exit $?
    fi;
    printf " \e[92m\xE2\x9C\x94\e[39m\n"
  done
}

# Obtención de la última versión estable de Redis
function getRedisServerLastestStableVersion() {
  printIndent
  printf "  %s" "$_MSG_RETRIEVING_LASTEST_STABLE_VERSION"
  _REDIS_LASTEST_STABLE_VERSION=$(
    curl -sL http://download.redis.io/redis-stable/00-RELEASENOTES | \
      grep Released | \
      head -n 1 | \
      cut -d' ' -f2 | \
      tr -d '\n'
  )
  if [ "$_REDIS_LASTEST_STABLE_VERSION" = "" ]; then
    printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
    printf "\n%s" "$_MSG_ERROR_RETRIEVING_LASTEST_VERSION_FROM_FILE" >&2
    printf " 'http://download.redis.io/redis-stable/" >&2
    printf "00-RELEASENOTES'.\n%s\n" "$_MSG_VERSIONS_FOUND" >&2
    printf "%s" "$(curl -sL http://download.redis.io/redis-stable/00-RELEASENOTES | \
      grep Released | \
      cut -d' ' -f2)\n" >&2
    exit 1
  fi;
  printf " (v%s) \e[92m\xE2\x9C\x94\e[39m\n" "$_REDIS_LASTEST_STABLE_VERSION"
}

function downloadRedisLastestStableVersion() {
  printIndent
  printf "  %s (v%s)..." "$_MSG_DOWNLOADING_REDIS" "$_REDIS_LASTEST_STABLE_VERSION"
  curl -sL http://download.redis.io/redis-stable.tar.gz \
    --output "$1" || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function buildRedis() {
  # Build from source code
  printIndent
  printf "    %s\n" "$_MSG_BUILDING_SOURCE_CODE"
  stdbuf -oL make 2>&1 |
    while IFS= read -r line; do
      if [ "$(echo "$line" | cut -d' ' -f1)" = "gcc" ]; then
        file=$(
          awk -F'src/' '{ for(i=1;i<=NF;i++) print $i }' <<< "$line" | \
          tail -n 1
        )
        printIndent
        printf "      %s \e[92m\xE2\x9C\x94\e[39m\n" "$file"
      fi;
    done
}

function testRedisBuild() {
  printIndent
  printf "    %s\n" "$_MSG_TESTING_BUILD"
  stdbuf -oL make test 2>&1 |
    while IFS= read -r line; do
      printIndent
      printf "%s" "$line"
    done
}

function checkRedisServiceConfig() {
  printIndent
  printf "  %s\n" "$_MSG_CHECKING_SERVICE_CONFIG"
  printIndent

  _REDIS_SERVICE_ENABLED_FOUND=$(
    systemctl list-unit-files | \
    grep enabled | \
    grep redis)
  if [ "$_REDIS_SERVICE_ENABLED_FOUND" = "" ]; then
    printf "    %s" "$_MSG_ENABLING"
    _ENABLE_REDIS_SERVER_OUTPUT=$(
      sudo systemctl enable redis.service 2>&1 > /dev/null
    )
    _ENABLE_REDIS_SERVER_EXIT_CODE=$?
    if [ $_ENABLE_REDIS_SERVER_EXIT_CODE -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "%s\n" "$_MSG_ERROR_ENABLING_SERVICE" >&2
      printf "%s: %s\n" "$_MSG_EXIT_CODE" "$_ENABLE_REDIS_SERVER_EXIT_CODE" >&2
      printf "%s: %s\n" "$_MSG_ERROR" "$_ENABLE_REDIS_SERVER_OUTPUT" >&2
      exit $_ENABLE_REDIS_SERVER_EXIT_CODE
    fi;
  else
    printf "    %s" "$_MSG_ITS_ENABLED"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printIndent

  _REDIS_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState redis | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ "$_REDIS_SERVICE_STATUS" != "active" ]; then
    printf "    %s" "$_MSG_EXECUTING"
    sudo systemctl start redis > /dev/null
    _REDIS_SERVICE_STARTED=$?
    if [ $_REDIS_SERVICE_STARTED -ne 0 ]; then
      printf " \e[91m\xE2\x9C\x95\e[39m\n" >&2
      printf "%s\n" "$_MSG_SERVICE_COULDNT_BE_STARTED" >&2
      printf "%s '%s'.\n" "$_MSG_ITS_ON_STATE" "$_REDIS_SERVICE_STATUS" >&2
      exit $_REDIS_SERVICE_STARTED
    fi;
  else
    printf "    %s" "$_MSG_ITS_RUNNING"
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"
}

function configureRedis() {
  # Create Redis configuration directory
  if [ -d "/etc/redis" ]; then
    sudo rm -rf /etc/redis
  fi;
  sudo mkdir /etc/redis || exit $?

  # Copy default configuration
  sudo cp /tmp/redis-stable/redis.conf /etc/redis || exit $?

  # Update configuration:
  #   supervised: no -> systemd
  sudo sed -i 's/^supervised no/supervised systemd/' /etc/redis/redis.conf || \
    exit $?
  #   dir: ./ -> /var/lib/redis
  sudo sed -i 's/^dir \.\//dir \/var\/lib\/redis/' /etc/redis/redis.conf || \
    exit $?

  # Create service configuration file
  printf "    %s" "$_MSG_CREATING_SERVICE"

  # Stop previous service, if was running
  sudo systemctl daemon-reload
  _REDIS_SERVICE_STATUS=$(
    sudo systemctl show -p ActiveState redis | \
    cut -d'=' -f2 | \
    tr -d '\n')
  if [ "$_REDIS_SERVICE_STATUS" != "inactive" ]; then
    sudo systemctl stop redis > /dev/null
  fi;

  if [ -f "/etc/systemd/system/redis.service" ]; then
    sudo rm -f /etc/systemd/system/redis.service
  fi;
  sudo touch /etc/systemd/system/redis.service
  cat << EOF > /etc/systemd/system/redis.service
[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
EOF
  # shellcheck disable=SC2181
  if [ $? -ne 0 ]; then
    exit $?
  fi;
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  printf "    %s" "$_MSG_CREATING_USER"
  # Check if 'redis' user exists
  if ! id -u redis > /dev/null 2>&1; then
    # Ya existe, lo eliminamos
    sudo userdel -f redis
  fi;
  # Create 'redis' user
  sudo adduser --system --group --no-create-home redis > /dev/null || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  # Create Redis directory
  if [ -d "/var/lib/redis" ]; then
    sudo rm -rf /var/lib/redis || exit $?
  fi;
  sudo mkdir /var/lib/redis || exit $?

  # Give permissions to user in directory
  sudo chown redis:redis /var/lib/redis || exit $?

  # Regular users can't access to the directory
  sudo chmod 770 /var/lib/redis || exit $?

  sudo systemctl daemon-reload
}

function installRedis() {
  if [ -d "redis-stable" ]; then
    rm -rf redis-stable
  fi;

  # Unzip downloaded file
  printIndent
  printf "    %s" "$_MSG_UNZIPPING"
  tar xzvf "$1" > /dev/null || exit $?
  # Remove zipped file
  rm -f "$1" || exit $?
  printf " \e[92m\xE2\x9C\x94\e[39m\n"

  # Build source code
  cd redis-stable || exit $?
  buildRedis

  # Test build, if necessary
  if [ $_TEST -eq 1 ]; then
    testRedisBuild
  fi;

  sudo make install > /dev/null 2>&1 || exit $?

  # Configure Redis installation
  configureRedis
}

function main() {
  printIndent
  printf "%s\n" "$_MSG_SETTING_REDIS_ECOSYSTEM"
  printIndent
  printf "  %s\n" "$_MSG_CHECKING_BASE_DEPENDENCIES"
  installScriptDependencies

  # Change to temporal directory
  cd /tmp || exit $?

  # Get latest available version
  getRedisServerLastestStableVersion

  # Check if is installed
  _REDIS_BINARY_FILEPATH="$(command -v redis-server)"
  if [ "$_REDIS_BINARY_FILEPATH" = "" ]; then
    downloadRedisLastestStableVersion /tmp/redis-stable.tar.gz
    printIndent
    printf "  %s (v%s)...\n" "$_MSG_INSTALLING_REDIS" "$_REDIS_LASTEST_STABLE_VERSION"
    installRedis /tmp/redis-stable.tar.gz
  else
    _REDIS_INSTALLED_VERSION=$(
      redis-server --version | \
      cut -d'=' -f2 | \
      cut -d' ' -f1)
    # If the version of Redis is not the latest stable
    if [ "$_REDIS_INSTALLED_VERSION" != "$_REDIS_LASTEST_STABLE_VERSION" ]; then
      downloadRedisLastestStableVersion /tmp/redis-stable.tar.gz
      printIndent
      printf "  %s (v%s ->" "$_MSG_UPDATING_REDIS" "$_REDIS_INSTALLED_VERSION"
      printf " v%s)...\n" "$_REDIS_LASTEST_STABLE_VERSION"
      installRedis /tmp/redis-stable.tar.gz
    else
      printIndent
      printf "  %s (v%s)" "$_MSG_FOUND_REDIS_INSTALLED" "$_REDIS_INSTALLED_VERSION"
      printf " \e[92m\xE2\x9C\x94\e[39m\n"
    fi;
  fi;

  # Check the service
  checkRedisServiceConfig

  cd "$_ORIGIN_PWD" || exit $?
}
</%block>
