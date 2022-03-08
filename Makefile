#################### RULES ####################

all: stop start

start:
	@sh ./start.sh

stop:
	service docker stop || systemctl stop docker
	@sh ./stop.sh
	service docker start || systemctl start docker

re: stop start

.PHONY: all start stop
