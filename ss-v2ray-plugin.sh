#! /bin/bash

echo $SSIP $SSPORT $SSLOCALPORT
nohup sslocal -c /etc/shadowsocks.json &
# nohup ./v2ray-plugin_linux_amd64 -tls -host=cubepaas.com -remoteAddr=47.75.195.118 -remotePort=443 -localPort=3389 &
/etc/init.d/privoxy restart

/root/v2ray-plugin_linux_amd64 -tls -host=cubepaas.com -remoteAddr=$SSIP -remotePort=$SSPORT -localPort=$SSLOCALPORT
