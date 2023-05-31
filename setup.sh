#!/bin/bash
set -e

vcs import < guide_dog.repos src
cd src/rslidar_sdk_ros2/
git submodule init
git submodule update
cd -

sudo apt-get update
rosdep update
rosdep install --from-paths src --ignore-src -y




