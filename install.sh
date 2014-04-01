#!/bin/bash

echo "--- Updating packages list ---"
sudo apt-get update

echo "--- MySQL password auto config ---"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

echo "--- Installing PHP-specific packages ---"
sudo apt-get install -y curl python-software-properties php5 apache2 libapache2-mod-php5 php5-curl php5-gd php5-mcrypt mysql-server php5-mysql php5-json git-core ruby adminer php5-xdebug

cat << EOF | sudo tee -a /etc/php5/mods-available/xdebug.ini
xdebug.scream=1
xdebug.cli_color=1
xdebug.show_local_vars=1
EOF

echo "--- Enabling mod-rewrite ---"
sudo a2enmod rewrite

echo "--- Setting document root ---"
sudo rm -rf /var/www
sudo ln -fs /vagrant /var/www


echo "--- What developer codes without errors turned on? Not you, master. ---"
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini

sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/sites-enabled/000-default

# Update the following with your desired document root
sed -i 's/\/var\/www/\/var\/www\/public/' /etc/apache2/sites-enabled/000-default

echo "--- Restarting Apache ---"
sudo service apache2 restart

echo "--- Composer is the future. But you knew that, did you master? Nice job. ---"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo "--- Node installation ---"
sudo echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y nodejs-legacy

echo "--- Create database name: database user: root password: root ---"
echo "CREATE DATABASE db_name CHARACTER SET utf8 COLLATE utf8_general_ci" | mysql -uroot -proot

