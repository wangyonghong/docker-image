FROM centos:7
# yonghongwang/centos-jdk:7-openjdk-8

ENV LANG en_US.utf8

COPY Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
COPY epel-7.repo /etc/yum.repos.d/epel.repo

RUN yum update -y \
&& yum install -y java-1.8.0-openjdk \
&& yum clean all
