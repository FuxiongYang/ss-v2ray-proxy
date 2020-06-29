FROM ubuntu:18.04

COPY ./apt-update.sh /root/

RUN sh /root/apt-update.sh
RUN apt-get update

RUN apt-get install -y net-tools
RUN apt-get install -y privoxy
RUN apt-get install -y python-pip
RUN pip install shadowsocks

COPY ./shadowsocks.json /etc/
COPY ./v2ray-plugin_linux_amd64 ./ss-v2ray-plugin.sh /root/
COPY ./config /etc/privoxy/

RUN /etc/init.d/privoxy restart

WORKDIR /root/

CMD ["/bin/bash"]
