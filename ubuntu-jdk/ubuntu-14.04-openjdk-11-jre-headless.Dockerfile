FROM ubuntu:14.04
# yonghongwang/ubuntu-jdk:14.04-openjdk-11-jre-headless

ENV LANG C.UTF-8

COPY sources-14.04.list /etc/apt/sources.list

RUN apt update && apt install -y apt-transport-https software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt update && apt install -y openjdk-11-jre-headless
