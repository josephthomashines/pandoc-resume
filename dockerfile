#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM josephthomashines/dev:latest

# Fix apt get issues
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Ensure all texlive packages are installed
# This is overkill, and could be refined...
RUN \
	apt-get upgrade && \
	apt-get update && \
	apt-get install pandoc ttf-bitstream-vera texlive-full \
		--assume-yes

# Copy fonts into system fonts directory
COPY ./fonts/*.ttc /usr/share/fonts/opentype/

# Update font cache
RUN fc-cache -f -v


