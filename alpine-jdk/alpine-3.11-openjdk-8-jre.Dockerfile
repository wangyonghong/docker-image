FROM alpine:3.11
# yonghongwang/apline-jdk:3.11-openjdk-8-jre

COPY repositories-3.11 /etc/apk/repositories

RUN apk add openjdk8-jre
