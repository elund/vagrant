#!/usr/bin/env bash

echo "~ Installing Base Packages ~"

# Update
sudo apt-get update

# Install
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get install -y python
sudo apt-get install -y g++
sudo apt-get install -y make
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y wget

# Git config
git config --global user.name $1
git config --global user.email $2

sudo usermod -a -G www-data vagrant

sudo chown -R vagrant:www-data /var/www
