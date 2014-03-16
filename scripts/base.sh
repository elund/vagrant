#!/usr/bin/env bash

echo "~ Installing Base Packages ~"

# Update
sudo apt-get update

# Install
sudo apt-get install -y build-essential
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y python-software-properties
sudo apt-get install -y wget

# Git config
git config --global user.name "Aaron Lord"
git config --global user.email "aaronlord1@gmail.com"
