#!/usr/bin/env bash

echo "~ Installing MySQL v5.5 ~"

# Update
sudo apt-get update

# Set passwords
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install
sudo apt-get install -y mysql-server-5.5
