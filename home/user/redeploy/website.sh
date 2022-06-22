#!/bin/sh

docker pull viomckinney/website:latest
docker rm -f http-_root
docker run -dp 8084:80 --name http-_root viomckinney/website:latest
