FROM ubuntu:18.04
# yonghongwang/ubuntu-tool:18.04

ENV LANG C.UTF-8

COPY sources-18.04.list /etc/apt/sources.list
COPY .vimrc /root/.vimrc

RUN apt update \
&& apt install -y vim htop iputils-ping net-tools telnet lsof curl wget