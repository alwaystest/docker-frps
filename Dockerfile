FROM alpine:latest
MAINTAINER thanos_me <thanosme@totallynoob.com>

COPY frps /usr/local/bin

VOLUME /data
ENTRYPOINT ["/usr/local/bin/frps", "-L", "console", "-c", "/data/frps.ini"]
