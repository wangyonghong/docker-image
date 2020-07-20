FROM centos:7
# yonghongwang/centos-jdk:7-openjdk-11

ENV LANG en_US.utf8

COPY Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
COPY epel-7.repo /etc/yum.repos.d/epel.repo

RUN yum update -y \
&& yum install -y java-11-openjdk \
&& yum clean all
