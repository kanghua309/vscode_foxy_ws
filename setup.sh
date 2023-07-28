#!/bin/bash
set -e

vcs import < guide_dog.repos src

sudo apt-get update
rosdep init
rosdep update --include-eol-distros #需要加这个才能把foxy的key index 引入，而rosdepc 不支持这个参数
rosdep install --from-paths src --ignore-src -r -y

#
# 有可能需要设置 “185.199.108.133  raw.githubusercontent.com” 在 /etc/hosts -- 因为国内dns修改
# 可查询ip地址 -- https://sites.ipaddress.com/raw.githubusercontent.com/
#




