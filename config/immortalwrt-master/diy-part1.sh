#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add OpenClash feed (use ^ for branch to fix syntax)
echo "src-git luci-app-openclash https://github.com/vernesong/OpenClash.git^master" >> feeds.conf.default

# Debug: Print feeds.conf to logs for checking line 9
cat feeds.conf.default

# other
# rm -rf package/emortal/{autosamba,ipv6-helper}
