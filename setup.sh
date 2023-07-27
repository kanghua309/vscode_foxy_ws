#!/bin/bash
set -e

vcs import < guide_dog.repos src

sudo apt-get update
rosdepc update
rosdepc install --from-paths src --ignore-src -r -y




