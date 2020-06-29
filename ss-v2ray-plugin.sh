#! /bin/bash



nohup sslocal -c /etc/shadowsocks.json &
# nohup ./v2ray-plugin_linux_amd64 -tls -host=cubepaas.com -remoteAddr=47.75.195.118 -remotePort=443 -localPort=3389 &
nohup ./v2ray-plugin_linux_amd64 -tls -host=cubepaas.com -remoteAddr=$1 -remotePort=$2 -localPort=$3 &

/etc/init.d/privoxy restart

echo $1 $2 $3