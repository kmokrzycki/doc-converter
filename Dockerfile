FROM ubuntu:14.04
MAINTAINER Kris Mo <kris.mo@gmail.com>

ENV HOME /root

# setup our Ubuntu sources (ADD breaks caching)
RUN echo "deb http://tw.archive.ubuntu.com/ubuntu/ trusty main\n\
deb http://tw.archive.ubuntu.com/ubuntu/ trusty multiverse\n\
deb http://tw.archive.ubuntu.com/ubuntu/ trusty universe\n\
deb http://tw.archive.ubuntu.com/ubuntu/ trusty restricted\n\
deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main\n\
"> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install libreoffice unoconv

EXPOSE 2220
EXPOSE 22
WORKDIR /


ENTRYPOINT ["/bin/bash"]
