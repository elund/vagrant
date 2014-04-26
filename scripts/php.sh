#!/usr/bin/env bash

if [ -z "$1" ]; then
    PHP_VERSION="5.3"
else
    PHP_VERSION="$1"
fi

echo "~ Installing PHP $1 ~"

if [ $PHP_VERSION == "5.5" ]; then
    sudo add-apt-repository -y ppa:ondrej/php5
fi

if [ $PHP_VERSION == "5.4" ]; then
    sudo add-apt-repository -y ppa:ondrej/php5-oldstable
fi

# Update
sudo apt-get update

# Install
sudo apt-get install -y php5
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
sudo apt-get install -y php5-memcached
sudo apt-get install -y php5-mysql

# Turn on error reporting
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini
