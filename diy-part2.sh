#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 25.12 feeds 自带 golang 1.26，满足 luci-app-mosdns 的 go 1.25.x+ 要求，无需替换

# 删除源码自带的 mosdns / v2ray-geodata，避免与 package/ 下 clone 的版本重复定义
find ./feeds -name Makefile | grep v2ray-geodata | xargs rm -f
find ./feeds -name Makefile | grep mosdns | xargs rm -f
rm -rf package/feeds/packages/v2ray-geodata package/feeds/packages/mosdns
