FROM alpine:3.15

RUN apk update && apk upgrade && apk add --no-cache \
	docker docker-cli openrc ; \
	rm -rf /var/cache/apk/*

RUN rc-update add docker boot

COPY ./Dockerfile /tmp/Dockerfile
COPY ./conf.sh /tmp/conf.sh

WORKDIR /tmp

ENTRYPOINT ["sh", "/tmp/conf.sh"]
