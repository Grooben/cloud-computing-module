#! /bin/bash
sudo su -
apt update
apt install apache2 mysql-server php php-mysql libapache2-mod-php php-cli phpmyadmin php-mbstring php-gettext
chmod -R 0755 /var/www/html/
systemctl enable apache2
systemctl start apache2
phpenmod mcrypt
phpenmod mbstring
systemctl restart apache2
echo "<?php phpinfo(); ?>" > /var/www/html/index.php 
