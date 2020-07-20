FROM alpine:3.10
# yonghongwang/apline-jdk:3.10-openjdk-8-jre

COPY repositories-3.10 /etc/apk/repositories

RUN apk add openjdk8-jre
