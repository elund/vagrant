#!/usr/bin/env bash

echo "~ Installing Apache2 ~"

# Update
sudo apt-get update

# Install
sudo apt-get install -y apache2

sudo apt-get install -y libapache2-mod-php5

sudo cat > /etc/apache2/sites-available/$1.conf << EOF
<VirtualHost *:80>
    DocumentRoot /var/www/public/
    ServerName $1
    ServerAlias *.$1

    SetEnv ENVIRONMENT LOCAL

    <Directory "/var/www/public/">
        Order allow,deny
        Allow from all
        Require all granted
        AllowOverride All
    </Directory>
</VirtualHost>
EOF

sudo a2ensite $1.conf

sudo a2enmod rewrite

sudo service apache2 restart

rm -rf /var/www/html/
