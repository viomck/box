#!/bin/sh
docker pull viomckinney/hashflags:latest
docker rm -f http-hashflags
docker run \
	-d \
	--name http-hashflags \
	-e APP_HOST_PORT=8082 \
	-p 8082:8082 \
	viomckinney/hashflags:latest
