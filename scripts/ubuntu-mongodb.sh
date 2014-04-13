#!/usr/bin/env bash

# Exit when any of these commands fail
set -e

# Mongodb: Import the public key used by the package management system
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

# Create a list file for MongoDB
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# Update all existing packages
apt-get -y update

# Install Mongodb
apt-get -y install mongodb-org