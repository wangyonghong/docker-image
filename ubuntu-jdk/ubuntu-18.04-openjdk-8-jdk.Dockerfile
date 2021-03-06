FROM ubuntu:18.04
# yonghongwang/ubuntu-jdk:18.04-openjdk-8-jdk

ENV LANG C.UTF-8

COPY sources-18.04.list /etc/apt/sources.list

RUN apt update && apt install -y openjdk-8-jdk
