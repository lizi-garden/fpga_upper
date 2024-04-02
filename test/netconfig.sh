#!/usr/bin/env sh

INTERFACE="enp4s0"

# 配置防火墙
# sudo firewall-cmd --permanent --add-port=7890-7891/udp

echo "配置电脑ip"
sudo ifconfig $INTERFACE 192.168.0.3 netmask 255.255.255.0

echo "当前电脑ip"
ifconfig $INTERFACE

echo "配置默认网关"
#sudo route add default gw 192.168.0.1

echo "当前默认网关"
sudo route -n

echo "绑定开发板ip地址"
sudo arp -s 192.168.0.2 00:0a:35:01:fe:c0

echo "当前开发板ip地址"
sudo arp -e
