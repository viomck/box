#!/bin/sh
docker pull viomckinney/hashflags:latest
docker rm -f hashflags
docker run \
	-d \
	--name hashflags \
	-e APP_HOST_PORT=8082 \
	-p 8082:8082 \
	viomckinney/hashflags:latest
