FROM alpine:3.10
# yonghongwang/apline-tool:3.10-openjdk-8

COPY repositories-3.10 /etc/apk/repositories
COPY .vimrc /root/.vimrc

RUN apk add vim htop curl busybox-extras openjdk8
