#!/bin/bash
echo "setting up web application"
# Update the system
sudo apt update -y
# Install utilities
sudo apt install -y zip unzip
# Install nginx
sudo apt install -y nginx
# Clean-up existing data
sudo rm -r /var/www/html
# Create Document Root
sudo mkdir -p /var/www/html
# Clone application
sudo git clone https://github.com/Afreen-Sayyad/webapp.git /var/www/html



