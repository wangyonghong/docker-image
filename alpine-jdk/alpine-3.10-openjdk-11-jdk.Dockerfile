FROM alpine:3.10
# yonghongwang/apline-jdk:3.10-openjdk-11-jdk

COPY repositories-3.10 /etc/apk/repositories

RUN apk add openjdk11-jdk
