#!/bin/bash

docker pull debian:buster
docker run -itd --name debian-10-test debian:buster
docker cp . debian-10-test:/shread

docker exec debian-10-test bash -c "apt-get update && apt-get install -y make sudo apt-utils aptitude curl wget ca-certificates apt-transport-https gnupg2"
docker exec debian-10-test bash -c "useradd -m docker && echo 'docker:docker' | chpasswd && adduser docker sudo"
docker exec -w /shread debian-10-test bash -c "bash scripts/build.sh"
