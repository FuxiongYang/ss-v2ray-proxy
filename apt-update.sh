mv /etc/apt/sources.list /etc/apt/sources.list.old


echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main" >>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial main" >>/etc/apt/sources.list

echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main" >>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main" >>/etc/apt/sources.list

echo "deb http://mirrors.aliyun.com/ubuntu/ xenial universe" >>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial universe" >>/etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe" >>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates universe" >>/etc/apt/sources.list

echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main" >>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main" >>/etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe" >>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security universe" >>/etc/apt/sources.list