
SHELL := /bin/bash

LOCAL_TAG=pandoc-container

.PHONY: all pdf jpg build help test run

pdf:
	pandoc -o "output/resume.pdf" -s --pdf-engine="xelatex" "markdown/resume.md" "--template=./latex/resume.latex"

jpg:
	convert -quality 100 -density 600x600 "output/resume.pdf" "output/resume"-%d.jpg

all:
	make pdf && make jpg

build:
	sudo docker build -t ${LOCAL_TAG} .

help:
	-@echo 'You must log in with:'
	-@echo '    docker login --username=yourhubusername --email=youremail@company.com'
	-@echo 'Then run:'
	-@echo '    docker images'
	-@echo 'Pick the correct ID and then:'
	-@echo '    docker tag ID yourhubusername/dev:latest'
	-@echo 'Finally:'
	-@echo '    docker push yourhubusername/dev'

test:
	make build
	sudo docker run -it --rm --network host -v $(shell pwd):/mounted ${LOCAL_TAG}

# This spins up a container with all ports exposed, mounted on the current directory
run:
	sudo docker run -it --rm --network host -v $(shell pwd):/home josephthomashines/pandoc

