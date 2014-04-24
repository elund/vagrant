#!/usr/bin/env bash

echo "~ Installing Node ~"

# Add the PPA
sudo apt-add-repository ppa:chris-lea/node.js -y

# Update
sudo apt-get update

# Install node
sudo apt-get install -y nodejs
