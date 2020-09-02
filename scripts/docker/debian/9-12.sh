#!/bin/bash

docker pull debian:stretch
docker run -itd --name debian-9-12-test debian:stretch
docker cp . debian-9-12-test:/shread

docker exec debian-9-12-test bash -c "apt-get update && apt-get install -y make sudo apt-utils aptitude curl wget ca-certificates apt-transport-https gnupg2"
docker exec debian-9-12-test bash -c "useradd -m docker && echo 'docker:docker' | chpasswd && adduser docker sudo"
docker exec -w /shread debian-9-12-test bash -c "bash scripts/build.sh"
