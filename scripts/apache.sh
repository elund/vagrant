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

</VirtualHost>
EOF

sudo a2ensite $1.conf

rm -rf /var/www/html/

sudo service apache2 restart
