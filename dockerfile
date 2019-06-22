#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM josephthomashines/dev

RUN \
	apt-get upgrade && \
	apt-get update && \
	apt-get install pandoc ttf-bitstream-vera texlive texlive-xetex \
		--assume-yes

