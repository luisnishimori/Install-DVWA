#!/bin/bash

apt-get -y update
apt-get -y upgrade

logger "Installing DVWA"

# install required packages
# bash cd ~
sudo apt install apache2 mysql-server php php-mysqli php-gd libapache2-mod-php git -y

# install DVWA
# bash cd ~
# bash git clone --recursive https://github.com/ethicalhack3r/DVWA.git
# bash sudo rm /var/www/html/index.html
# bash sudo cp -r ~/DVWA/* /var/www/html/
# bash cd /var/www/html
# bash ls -la /var/www/html/
# bash sudo cp config/config.inc.php.dist config/config.inc.php
# bash cd /var/www/html
# bash sudo chmod 757 /var/www/html/hackable/uploads/
# bash sudo chmod 646 /var/www/html/external/phpids/0.6/lib/IDS/tmp/phpids_log.txt 
# bash sudo chmod 777 /var/www/html/config
# bash sudo systemctl restart apache2

# MySQL Setup
# bash sudo mysql -uroot
# DROP USER 'root'@'localhost';
# CREATE USER 'dvwa'@'localhost' IDENTIFIED BY 'p@ssw0rd';
# GRANT ALL PRIVILEGES ON *.* TO 'dvwa'@'localhost' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
# exit
