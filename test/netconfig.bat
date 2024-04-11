@echo off
@ 未测试

SET INTERFACE="enp4s0"

echo "配置电脑ip"
netsh interface ip set address "%INTERFACE%" source=static addr=192.168.0.3 mask=255.255.255.0 gateway=192.168.0.1

echo "当前电脑ip"
ipconfig /all

echo "当前默认网关"
route -n

echo "绑定开发板ip地址"
ARP -s 192.168.0.2 00-0a-35-01-fe-c0

echo "当前开发板ip地址"
ARP -e

pause