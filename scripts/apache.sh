#!/usr/bin/env bash

echo "~ Installing Apache2 ~"

# Update
sudo apt-get update

# Install
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5