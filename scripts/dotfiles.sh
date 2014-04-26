#!/usr/bin/env bash

echo "~ Setting up Dotfiles ~"

# Download the files
git clone -b server https://github.com/aaronlord/.dotfiles.git ~/.dotfiles

chmod +x ~/.dotfiles/vendor/z.sh

# Symlink the config file
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
