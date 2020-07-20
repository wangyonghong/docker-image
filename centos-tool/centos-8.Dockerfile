FROM centos:8
# yonghongwang/centos-tool:8

ENV LANG en_US.utf8

COPY Centos-8.repo /etc/yum.repos.d/CentOS-Base.repo
COPY .vimrc /root/.vimrc

RUN yum install -y https://mirrors.aliyun.com/epel/epel-release-latest-8.noarch.rpm \
&& sed -i 's|^#baseurl=https://download.fedoraproject.org/pub|baseurl=https://mirrors.aliyun.com|' /etc/yum.repos.d/epel* \
&& sed -i 's|^metalink|#metalink|' /etc/yum.repos.d/epel*

RUN yum update -y \
&& yum install -y fontconfig vim htop net-tools telnet lsof wget \
&& yum clean all
