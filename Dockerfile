# Minimal Docker image for Minigraph using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install Minigraph
RUN apk update && \
    apk add bash && \
    wget -qO- "https://github.com/lh3/minigraph/releases/download/v0.17/minigraph-0.17_x64-linux.tar.bz2" | tar -jx && \
    mv minigraph-*/minigraph /usr/local/bin/minigraph && \
    rm -rf minigraph-*
