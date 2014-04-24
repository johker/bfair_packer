#!/usr/bin/env bash

# Exit when any of these commands fail
set -e

mkdir -p /opt/software
chmod 755 /opt/software
cp /tmp/software/jdk-7u51-linux-x64.tar.gz /opt/software

# Add add-apt repository
apt-get -y install python-software-properties
add-apt-repository -y ppa:chris-lea/node.js

# Update all existing packages
sudo rm -rf /var/lib/apt/lists/*
apt-get -y update
apt-get -y upgrade

# Install maven
apt-get -y install maven

# Install Curl
apt-get install -y curl

#Install Node
apt-get -y install nodejs

# Reboot 
reboot

# Sleep a while...
sleep 60
