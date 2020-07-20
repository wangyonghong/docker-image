FROM rabbitmq:3.8-management
# yonghongwang/rabbitmq:3.8

ENV LANG C.UTF-8

COPY enabled_plugins /etc/rabbitmq/enabled_plugins
COPY sources-18.04.list /etc/apt/sources.list
COPY .vimrc /root/.vimrc

RUN apt update \
&& apt install -y vim htop iputils-ping net-tools telnet lsof curl wget
RUN wget -P /plugins https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez
