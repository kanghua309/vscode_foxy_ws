#!/bin/bash
set -e

vcs import < src/guide_dog.repos src
cd src/rslidar_sdk_ros2/
git submodule init
git submodule update

sudo apt-get update
rosdep update
rosdep install --from-paths src --ignore-src -y
