#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

logger "Installing DVWA"

# install required packages
cd ~
sudo apt install apache2 mysql-server php php-mysqli php-gd libapache2-mod-php git

# install DVWA
cd ~
git clone --recursive https://github.com/ethicalhack3r/DVWA.git
sudo rm /var/www/html/index.html
sudo cp -r ~/DVWA/* /var/www/html/
cd /var/www/html
ls -la /var/www/html/
sudo cp config/config.inc.php.dist config/config.inc.php
cd /var/www/html
sudo chmod 757 /var/www/html/hackable/uploads/
sudo chmod 646 /var/www/html/external/phpids/0.6/lib/IDS/tmp/phpids_log.txt 
sudo chmod 777 /var/www/html/config
sudo systemctl restart apache2

# MySQL Setup
sudo mysql -uroot
DROP USER 'root'@'localhost';
CREATE USER 'dvwa'@'localhost' IDENTIFIED BY 'p@ssw0rd';
GRANT ALL PRIVILEGES ON *.* TO 'dvwa'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
