#!/usr/bin/env bash

echo "~ Setting up Vim ~"

# Update
sudo apt-get update

# Install
sudo apt-get install -y vim

# Download the files
git clone https://github.com/aaronlord/.vim.git /home/vagrant/.vim
sudo chown -R vagrant:vagrant /home/vagrant/.vim

# Symlink the config file
ln -s /home/vagrant/.vim/.vimrc /home/vagrant/.vimrc

# Install bundles
# git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
# sudo su - vagrant -c 'vim +BundleInstall +qall'
