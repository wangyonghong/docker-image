FROM ubuntu:16.04
# yonghongwang/ubuntu-jdk:16.04-openjdk-8-jre

ENV LANG C.UTF-8

COPY sources-16.04.list /etc/apt/sources.list

RUN apt update && apt install -y openjdk-8-jre
