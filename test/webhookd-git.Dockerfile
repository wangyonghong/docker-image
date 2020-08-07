FROM debian:buster
# yonghongwang/test:webhookd-git-1.9.0

ENV WHD_SCRIPTS=/webhookd/scripts
ENV WHD_LISTEN_ADDR=8080

RUN apt update && apt install -y git curl
RUN curl -o webhookd.tgz -L https://github.com/ncarlier/webhookd/releases/download/v1.9.0/webhookd-linux-amd64.tgz \
&& mkdir /webhookd && tar zxvf webhookd.tgz -C /webhookd && rm webhookd.tgz

EXPOSE 8080
CMD /webhookd/webhookd
