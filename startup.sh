#! /bin/bash
sudo apt update
sudo apt -y install apache2 mysql-server php php-mysql libapache2-mod-php php-cli phpmyadmin php-mbstring php-gettext
sudo chmod -R 0755 /var/www/html/
sudo systemctl enable apache2
sudo systemctl start apache2
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo systemctl restart apache2
sudo echo "<?php phpinfo(); ?>" > /var/www/html/index.php 
