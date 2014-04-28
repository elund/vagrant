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
sudo apt-get install -y php5-xdebug

# xdebug Config
cat > $(find /etc/php5 -name xdebug.ini) << EOF
zend_extension=$(find /usr/lib/php5 -name xdebug.so)
xdebug.remote_enable = 1
xdebug.remote_connect_back = 1
xdebug.remote_port = 9000
xdebug.scream=0
xdebug.cli_color=1
xdebug.show_local_vars=1

; var_dump display
xdebug.var_display_max_depth = 5
xdebug.var_display_max_children = 256
xdebug.var_display_max_data = 1024
EOF

# Turn on error reporting
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini
