
SHELL := /bin/bash

LOCAL_TAG=tex

.PHONY: build help test run

build:
	sudo docker build -t ${LOCAL_TAG} .

help:
	-@echo 'You must log in with:'
	-@echo '    docker login --username=yourhubusername --email=youremail@company.com'
	-@echo 'Then run:'
	-@echo '    docker images'
	-@echo 'Pick the correct ID and then:'
	-@echo '    docker tag ID yourhubusername/tag:latest'
	-@echo 'Finally:'
	-@echo '    docker push yourhubusername/tag'

test:
	make build
	sudo docker run -it --rm --network host -v $(shell pwd):/mounted ${LOCAL_TAG}

# This spins up a container with all ports exposed, mounted on the current directory
run:
	sudo docker run -it --rm --network host -v $(shell pwd):/home josephthomashines/tex

