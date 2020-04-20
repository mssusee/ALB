#!/bin/bash
yum install -y httpd php git
cd /var/www/html
wget https://raw.githubusercontent.com/mssusee/ALB/master/Rose.jpg
wget https://raw.githubusercontent.com/mssusee/ALB/master/index.php
wget https://raw.githubusercontent.com/mssusee/ALB/master/htaccess
mv /var/www/html/htaccess /var/www/html/.htaccess

mkdir /var/www/html/Rose
cp /var/www/html/Rose.jpg /var/www/html/Rose
cp /var/www/html/index.php /var/www/html/Rose
cp /var/www/html/.htaccess /var/www/html/Rose

sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
