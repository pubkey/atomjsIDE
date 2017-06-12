#!/usr/bin/env bash
FROM ubuntu:17.10

ENV ATOM_VERSION 1.17.2
RUN echo "Version: ${ATOM_VERSION}"

RUN apt-get -y update --fix-missing && apt-get -y upgrade

##helpers (not essential)
RUN apt-get install -y nano
RUN apt-get install -y wget
RUN apt-get install -y htop
RUN apt-get install -y lsof


## things to build npm-modules
RUN apt-get install apt-utils -y
RUN apt-get install build-essential -y
RUN apt-get install python -y
RUN apt-get install g++ -y

#ATOM.io
#@link https://hub.docker.com/r/jamesnetherton/docker-atom-editor/~/dockerfile/
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      fakeroot \
      gconf2 \
      gconf-service \
      git \
      gvfs-bin \
      libasound2 \
      libcap2 \
      libgconf-2-4 \
      libgtk2.0-0 \
      libnotify4 \
      libnss3 \
      libxkbfile1 \
      libxss1 \
      libxtst6 \
      python \
      xdg-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# http://stackoverflow.com/questions/480764/linux-error-while-loading-shared-libraries-cannot-open-shared-object-file-no-s
RUN ldconfig


# install atom.io
RUN curl -L https://github.com/atom/atom/releases/download/v${ATOM_VERSION}/atom-amd64.deb > /tmp/atom.deb
RUN dpkg -i /tmp/atom.deb
RUN rm -f /tmp/atom.deb


COPY entrypoint.bash /usr/bin/entrypoint.bash
ENTRYPOINT /bin/bash /usr/bin/entrypoint.bash
