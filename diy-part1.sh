#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
cd lean  
rm -rf luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/kenzok8/openwrt-packages
git clone https://github.com/kenzok8/small
git clone https://github.com/esirplayground/luci-app-poweroff
git clone https://github.com/jerrykuku/luci-app-argon-config.git
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git
cd ..
sed -i 's/OpenWrt/OpenWRT_WSure_$(date "+%Y.%m.%d")/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
