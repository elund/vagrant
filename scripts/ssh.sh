#!/usr/bin/env bash

echo "~ Setting up SSH ~"

if [ -z "$1" ]; then
    echo $1 >> /home/vagrant/.ssh/authorized_keys
fi

sudo -u vagrant ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N ''
