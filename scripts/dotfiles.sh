#!/usr/bin/env bash

echo "~ Setting up Dotfiles ~"

# Download the files
git clone -b server https://github.com/aaronlord/.dotfiles.git /home/vagrant/.dotfiles
sudo chown -R vagrant:vagrant /home/vagrant/.dotfiles
chmod +x /home/vagrant/.dotfiles/vendor/z.sh

# Symlink the config file
ln -s /home/vagrant/.dotfiles/.bash_profile /home/vagrant/.bash_profile
