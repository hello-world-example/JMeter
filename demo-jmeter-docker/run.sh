#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="kail/jmeter:5.4"

# Finally run
sudo docker stop ${NAME} >/dev/null 2>&1
sudo docker rm ${NAME} >/dev/null 2>&1
sudo docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@

# Server Model
docker run -i --rm --name jmeter-server ${IMAGE}