FROM debian:jessie
MAINTAINER Peer Xu <pppeerxu@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV SS_ENV_PASSWORD "5ecret!"
ENV SS_ENV_METHOD aes-256-cfb
ENV SS_ENV_PORT 8388
ENV SS_ENV_TIMEOUT 300
ENV SS_ENV_USER nobody
ENV SS_ENV_LOGFILE /var/log/shasocks.log

RUN \
    apt-get update && \
    apt-get install -y python-pip && \
    pip install shadowsocks && \
    rm -rf /var/lib/apt/lists/*

EXPOSE $SS_ENV_PORT

ENTRYPOINT ssserver -p $SS_ENV_PORT -k $SS_ENV_PASSWORD -t $SS_ENV_TIMEOUT --fast-open --user $SS_ENV_USER --log-file $SS_ENV_LOGFILE -m $SS_ENV_METHOD
