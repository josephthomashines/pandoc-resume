# Pull base image.
FROM ubuntu:14.04

# Set environment variables.
ENV HOME /root

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y git htop man unzip vim wget pandoc imagemagick tmux context

RUN apt-get remove -y wget && \
    apt-get autoclean && \
    apt-get clean

# Grab shell config
RUN git clone https://github.com/josephthomashines/arch-config-files.git $HOME/my-config
RUN cp $HOME/my-config/shell/.b* $HOME
RUN cp $HOME/my-config/shell/.v* $HOME

# Grab most recent resume version
# RUN git clone https://github.com/josephthomashines/pandoc-resume.git $HOME/resume

# Copy files
COPY * $HOME/test-copy/

# Define working directory.
WORKDIR $HOME

# Define default command.
CMD ["/bin/bash"]
