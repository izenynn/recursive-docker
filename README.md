# recursive-docker

A docker container that runs another container that runs another container that runs another container...

## How to use

- to start run:

```sh
make start
```

- to stop run:

```sh
sudo make stop
```

- to restart you can simply run:

```sh
sudo make re
```

NOTE: check how many containers are running with:

```sh
docker ps | wc -l
```

if containers are not stopping with `make stop`, you will need to stop the docker service with:

```sh
sudo service docker stop || sudo systemctl stop docker
```
*or any other service manager*

after that run the stop script
```sh
sudo sh ./stop.sh
```

and start docker again with:
```sh
sudo service docker start || sudo systemctl start docker
```
*or any other service manager*

if this is not working... restart your machine :D

##
[![forthebadge](https://forthebadge.com/images/badges/powered-by-black-magic.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/you-didnt-ask-for-this.svg)](https://forthebadge.com)
