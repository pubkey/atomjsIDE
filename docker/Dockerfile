#!/usr/bin/env bash
FROM ubuntu:latest

RUN echo "Version: 1.0"

RUN apt-get -y update --fix-missing && apt-get -y upgrade

##helpers (not essential)
RUN apt-get install -y nano
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y htop
RUN apt-get install -y lsof


## things to build npm-modules
RUN apt-get install build-essential -y
RUN apt-get install python -y
RUN apt-get install g++ -y

#ATOM.io
#@link https://hub.docker.com/r/jamesnetherton/docker-atom-editor/~/dockerfile/
RUN apt-get update && \
    apt-get install git \
                    curl \
                    ca-certificates \
                    libgtk2.0-0 \
                    libxtst6 \
                    libnss3 \
                    libgconf-2-4 \
                    libasound2 \
                    fakeroot \
                    gconf2 \
                    gconf-service \
                    libcap2 \
                    libnotify4 \
                    libxtst6 \
                    libnss3 \
                    gvfs-bin \
                    xdg-utils -y --no-install-recommends && \
    apt-get clean
ENV ATOM_VERSION v1.8.0
RUN curl -L https://github.com/atom/atom/releases/download/${ATOM_VERSION}/atom-amd64.deb > /tmp/atom.deb
RUN dpkg -i /tmp/atom.deb
RUN rm -f /tmp/atom.deb



COPY entrypoint.bash /usr/bin/entrypoint.bash
ENTRYPOINT /bin/bash /usr/bin/entrypoint.bash
