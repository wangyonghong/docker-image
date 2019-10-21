FROM ubuntu:18.04

ENV LANG C.UTF-8

RUN apt update && apt install -y vim htop iputils-ping net-tools telnet nmap lsof curl wget

ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y tzdata && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
    
COPY sources-18.04.list /etc/apt/sources.list
COPY .vimrc /root/.vimrc