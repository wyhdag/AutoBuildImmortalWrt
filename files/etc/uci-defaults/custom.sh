#!/bin/sh

uci set network.lan.proto='static'
uci set network.lan.ipaddr='10.0.0.251'
uci set network.lan.netmask='255.255.255.0'
uci set network.lan.gateway='10.0.0.253'


# 设置编译作者信息
FILE_PATH="/etc/openwrt_release"
NEW_DESCRIPTION=""
sed -i "s/DISTRIB_DESCRIPTION='[^']*'/DISTRIB_DESCRIPTION='$NEW_DESCRIPTION'/" "$FILE_PATH"

exit 0

