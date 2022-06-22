#!/bin/sh

docker pull viomckinney/dumbrouter:latest
docker rm -f dumbrouter
docker run \
        --name dumbrouter \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -p 8083:8080 \
        -e LOCALHOST_IP=172.17.0.1 \
        -d \
        viomckinney/dumbrouter:latest
