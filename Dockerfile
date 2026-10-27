# Minimal Docker image for Minigraph using Alpine base
FROM alpine:latest

# install Minigraph
RUN apk update && \
    apk add --no-cache bash gcc make musl-dev zlib-dev && \
    wget -qO- "https://github.com/lh3/minigraph/archive/refs/tags/v0.21.tar.gz" | tar -zx && \
    cd minigraph-* && \
    make && \
    mv minigraph /usr/local/bin/minigraph && \
    cd .. && \
    rm -rf minigraph-*
