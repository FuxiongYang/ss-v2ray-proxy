FROM ubuntu:18.04

COPY ./apt-update.sh /root/

RUN sh /root/apt-update.sh && apt-get update

ARG ssip=47.75.195.118
ENV SSIP ${ssip}
ARG ssport=443
ENV SSPORT ${ssport}
ARG sslocalport=3389
ENV SSLOCALPORT ${sslocalport}

RUN apt-get install -y net-tools privoxy python-pip && \
    pip install shadowsocks && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./shadowsocks.json /etc/
COPY ./v2ray-plugin_linux_amd64 ./ss-v2ray-plugin.sh /root/
COPY ./config /etc/privoxy/

RUN chmod +x /root/ss-v2ray-plugin.sh

WORKDIR /root/

ENTRYPOINT [ "/root/ss-v2ray-plugin.sh" ]
