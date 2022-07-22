#!/bin/sh
BOT_TOKEN=""

docker pull viomckinney/deaner:latest
docker rm -f deaner
docker run \
        --name deaner \
        -d \
        --restart always \
        -e BOT_TOKEN="$BOT_TOKEN" \
        viomckinney/deaner:latest
