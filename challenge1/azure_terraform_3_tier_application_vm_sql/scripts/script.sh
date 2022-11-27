#!/bin/bash
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd
sudo systemctl stop httpd
sudo systemctl disable firewalld
sudo chmod -R 777 /var/www/html
sudo echo "Welcome to test - WebVM App1 - VM Hostname: $(hostname)" > /var/www/html/index.html