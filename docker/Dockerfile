FROM alpine:3.8

LABEL description="Docker container for building www.net.ict.e.titech.ac.jp using Hugo with room308-theme."
LABEL maintainer="Taichi MIYA <miya@net.ict.e.titech.ac.jp>"

ENV HUGO_VERSION=0.52
ENV HUGO_TYPE=_extended
ENV HUGO_RELEASE=hugo${HUGO_TYPE}_${HUGO_VERSION}

RUN mkdir -p /tmp/hugosrc
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_RELEASE}_Linux-64bit.tar.gz /tmp/hugosrc
RUN tar xf /tmp/hugosrc/${HUGO_RELEASE}_Linux-64bit.tar.gz -C /tmp/hugosrc && \
    mkdir -p /usr/local/sbin && \
    mv /tmp/hugosrc/hugo /usr/local/sbin/hugo && \
    chmod +x /usr/local/sbin/hugo && \
    rm -rf /tmp/hugosrc

RUN apk add --no-cache git libc6-compat libstdc++ ca-certificates

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN mkdir -p /output

WORKDIR /src
COPY ./config.toml ./config.toml

ENTRYPOINT ["/entrypoint.sh"]

