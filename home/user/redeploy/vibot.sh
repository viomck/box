#!/bin/sh
BOT_TOKEN=""

docker pull viomckinney/vibot:latest
docker rm -f vibot
docker run \
	--name vibot \
        -d \
	-e BOT_TOKEN="$BOT_TOKEN" \
	-e BOT_PREFIX="!" \
	viomckinney/vibot:latest
