#!/usr/bin/env bash

echo "~ Installing RVM $1 ~"

sudo apt-get -y install curl

curl -sSL https://get.rvm.io | bash -s $1

source /home/vagrant/.rvm/scripts/rvm

rvm --default use --install $2

if [ $3 ]; then
    gem install $3
fi
