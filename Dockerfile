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
RUN git clone https://github.com/josephthomashines/arch-config-files.git $HOME/my-configs
RUN cp $HOME/my-configs/shell/.b* $HOME
RUN cp $HOME/my-configs/shell/.v* $HOME
RUN rm -rf $HOME/my-configs

# Grab most recent resume version
# RUN git clone https://github.com/josephthomashines/pandoc-resume.git $HOME/resume

# Copy repo into container
COPY . $HOME/pandoc-resume

# Copy ImageMagick policy config into /etc/
RUN cp $HOME/pandoc-resume/configs/im_policy.xml /etc/ImageMagick/policy.xml

# Define working directory.
WORKDIR $HOME/pandoc-resume
RUN git pull

# Define default command.
CMD ["/bin/bash"]
