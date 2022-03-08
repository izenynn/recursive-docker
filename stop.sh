#!/bin/sh

#docker stop recursive-docker

docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)

docker container prune -af
docker image prune -af
docker system prune -af
