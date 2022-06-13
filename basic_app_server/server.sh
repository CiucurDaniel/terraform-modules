#!/bin/bash
sudo su
yum -y install httpd
echo "<p> EC2 instance is here </p>" >> /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd