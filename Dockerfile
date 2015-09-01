FROM nona/ffmpeg
MAINTAINER Shaun Egan <shaun@nonacreative.com>

RUN \
    apt-get update && \
    apt-get install -yq apt-utils && \
    apt-get install -yq gcc make build-essential npm git && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /repositories && \
    cd /repositories && \
    git clone https://github.com/joyent/node.git && \
    cd node && \
    git checkout tags/v0.12.4 && \
    ./configure && \
    make && \
    make install
