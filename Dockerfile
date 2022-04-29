# Minimal Docker image for Minigraph using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install Minigraph
RUN apk update && \
    apk add bash gcc make musl-dev zlib-dev && \
    wget -qO- "https://github.com/lh3/minigraph/archive/refs/tags/v0.17.tar.gz" | tar -zx && \
    cd minigraph-* && \
    make && \
    chmod a+x minigraph && \
    mv minigraph /usr/local/bin/minigraph && \
    cd .. && \
    rm -rf minigraph-*
