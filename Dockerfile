FROM ubuntu:24.04

ARG MONGOSYNC_VERSION=1.18.0
ARG MONGOSYNC_TGZ=mongosync-ubuntu2204-x86_64-${MONGOSYNC_VERSION}.tgz
ARG MONGOSYNC_URL=https://fastdl.mongodb.org/tools/mongosync/${MONGOSYNC_TGZ}

RUN apt-get update && apt-get install -y ca-certificates tar curl libkrb5-3 libgssapi-krb5-2

RUN set -x; curl -fsSL "$MONGOSYNC_URL" -o /tmp/mongosync.tgz \
     && tar -zxvf /tmp/mongosync.tgz -C /opt --strip-components=1 \
     && install -m 0755 /opt/bin/mongosync /usr/local/bin/mongosync \
     && rm -f /tmp/mongosync.tgz

