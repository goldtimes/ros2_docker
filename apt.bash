#!/bin/bash


# Exit script immediately if an error is encountered:
set -e

# apt update 
apt-get update 2>&1 | tee -a /tmp/apt.err && \
apt-get install --assume-yes --no-install-recommends --quiet=2 \
  ros-humble-navigation
  ros-humble-turtlebot3*
  2>&1 | tee -a /tmp/apt.err \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
