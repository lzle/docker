
PWD := $(shell pwd)
VERSION := 1.19.6
PORT := 8080



.PHONY: install
install:
	docker pull nginx:${VERSION}
	docker run -d --name nginx-${PORT} -v ${PWD}/conf/nginx.conf:/etc/nginx/nginx.conf -p ${PORT}:80 nginx
