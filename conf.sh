#!/bin/sh

cd /tmp
docker build -t recursive-docker .
docker run -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" recursive-docker:latest /bin/sh
