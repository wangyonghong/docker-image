FROM centos:8
# yonghongwang/centos-jdk:8-openjdk-11-headless

ENV LANG en_US.utf8

COPY Centos-8.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y https://mirrors.aliyun.com/epel/epel-release-latest-8.noarch.rpm \
&& sed -i 's|^#baseurl=https://download.fedoraproject.org/pub|baseurl=https://mirrors.aliyun.com|' /etc/yum.repos.d/epel* \
&& sed -i 's|^metalink|#metalink|' /etc/yum.repos.d/epel*

RUN yum update -y \
&& yum install -y java-11-openjdk-headless \
&& yum clean all