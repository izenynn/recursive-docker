#!/bin/sh

docker build -t recursive-docker .
docker run -d -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" recursive-docker:latest /bin/sh
