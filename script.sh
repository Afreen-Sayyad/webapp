#/!bin/bash
echo "setting up web application"
#System update
sudo apt update -y 
#Install utilities
sudo apt install zip unzip -y
#Install nginx
sudo apt install -y nginx
#clean up existing data
sudo rm -r /var/www/html
#create DocumentRoot
sudo mkdir -p /var/www/html
#clone application
sudo git clone https://github.com/Afreen-Sayyad/webapp.git /var/www/html
