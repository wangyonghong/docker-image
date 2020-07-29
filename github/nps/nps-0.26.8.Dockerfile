FROM alpine
# yonghongwang/nps:0.26.8

RUN mkdir -p /nps && cd /nps \
&& wget https://github.com/ehang-io/nps/releases/download/v0.26.8/linux_amd64_server.tar.gz \
&& tar -zxvf linux_amd64_server.tar.gz && rm linux_amd64_server.tar.gz

EXPOSE 80 443 8080 8024

CMD [ "/nps/nps" ]
