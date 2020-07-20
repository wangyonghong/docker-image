FROM alpine:3.11
# yonghongwang/apline-jdk:3.11-openjdk-11-jre

COPY repositories-3.11 /etc/apk/repositories

RUN apk add openjdk11-jre
