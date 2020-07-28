FROM ubuntu:18.04
# yonghongwang/build-tool:ubuntu-18.04

ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
# ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

COPY sources-18.04.list /etc/apt/sources.list
COPY .vimrc /root/.vimrc

RUN apt update \
&& apt install -y vim htop iputils-ping net-tools telnet lsof curl wget

RUN apt install -y openjdk-8-jdk openjdk-11-jdk maven gradle