#!/usr/bin/env bash

echo "~ Installing Composer ~"

# Install
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
