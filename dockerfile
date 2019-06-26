#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM josephthomashines/dev

# Fix apt get issues
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN \
	apt-get upgrade && \
	apt-get update && \
	apt-get install pandoc ttf-bitstream-vera texlive-full \
		--assume-yes



