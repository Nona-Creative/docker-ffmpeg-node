FROM nona/ffmpeg:0.0.11
MAINTAINER Shaun Egan <shaun@nonacreative.com>

RUN \
    apt-get update && \
    apt-get install -yq apt-utils && \
    apt-get install -yq gcc make build-essential npm git curl && \
    curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* 
