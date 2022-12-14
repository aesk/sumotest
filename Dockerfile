# ORIGINAL:FROM ubuntu:16.04
FROM ubuntu:18.04

# ORIGINAL MAINTAINER Bo Gao (bogao@dcs.warwick.ac.uk)
MAINTAINER Aarne Klemetti (aarne.klemetti@metropolia.fi)
LABEL Description="Dockerised Simulation of Urban MObility(SUMO)"

# ORIGINAL:ENV SUMO_VERSION 0.31.0
ENV SUMO_VERSION 1.14.1

ENV SUMO_HOME /opt/sumo
ENV SUMO_USER atest
ENV SUMO_PSW atest124

ARG DEBIAN_FRONTEND=noninteractive

# RUN add-apt-repository ppa:sumo/stable && apt update && apt install sumo -y sumo-tools -y sumo-doc -y && adduser $SUMO_USER --disabled-password && usermod -aG sudo $SUMO_USER
# RUN apt update && apt install sumo -y sumo-tools -y sumo-doc -y && adduser $SUMO_USER --disabled-password && usermod -aG sudo $SUMO_USER
# sudo add-apt-repository ppa:sumo/stable
# sudo apt-get update
# sudo apt-get install sumo sumo-tools sumo-doc

# Install system dependencies.
# RUN apt-get update && apt-get -qq install \
#     wget \
#     g++ \
#     make \
#     libxerces-c-dev \
#     libfox-1.6-0 libfox-1.6-dev
    
# Python is already in the distro    \python2.7

# RUN sudo apt-get update 
# RUN sudo apt-get upgrade 
# RUN sudo add-apt-repository ppa:sumo/stable

# RUN sudo apt-get install sumo sumo-tools sumo-doc

# RUN apt-get update
# RUN apt-get install sumo sumo-tools sumo-doc


# Download and extract source code
# RUN wget http://downloads.sourceforge.net/project/sumo/sumo/version%20$SUMO_VERSION/sumo-src-$SUMO_VERSION.tar.gz
# RUN tar xzf sumo-src-$SUMO_VERSION.tar.gz && \
#     mv sumo-$SUMO_VERSION $SUMO_HOME && \
#     rm sumo-src-$SUMO_VERSION.tar.gz

# Configure and build from source.
# RUN cd $SUMO_HOME && ./configure && make install

# RUN apt-get install sudo

# RUN adduser $SUMO_USER --disabled-password
# RUN usermod -aG sudo $SUMO_USER
USER $SUMO_USER
# CMD sumo-gui
