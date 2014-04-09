#!/usr/bin/env bash

# Exit when any of these commands fail
set -e

# Add add-apt repository
apt-get -y install python-software-properties
add-apt-repository -y ppa:chris-lea/node.js  

# Update all existing packages
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
