#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM josephthomashines/dev:latest

# Install tex packages
RUN \
  pacman -Sy --noconfirm \
    texlive-most

# Copy fonts into system fonts directory
COPY ./fonts/*.ttc /usr/share/fonts/opentype/

# Update font cache
RUN fc-cache -f -v


