FROM centos:8

ENV LANG en_US.utf8

RUN yum install -y epel-release
RUN yum update -y && yum install -y fontconfig vim htop net-tools telnet nmap lsof wget && yum clean all


COPY .vimrc /root/.vimrc