#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
# luci-theme-infinityfreedom
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git feeds/luci/themes/luci-theme-infinityfreedom
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
# Modify default host name
sed -i 's/OpenWrt/Kyara/g' package/base-files/files/bin/config_generate
# Modify default wireless name
sed -i 's/OpenWrt/Kyara/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

