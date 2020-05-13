FROM centos:7
# yonghongwang/centos-tool:7-rclone-openjdk-11

ENV LANG en_US.utf8

COPY Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
COPY epel-7.repo /etc/yum.repos.d/epel.repo
COPY .vimrc /root/.vimrc

RUN rpm --import /etc/pki/rpm-gpg/RPM* \
&& yum update -y && yum install -y deltarpm \
&& yum install -y fontconfig vim htop net-tools telnet lsof wget unzip mysql ftp nfs-utils java-11-openjdk \
&& curl https://rclone.org/install.sh | bash \
&& yum clean all && yum makecache
