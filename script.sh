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

# Update Nginx configuration to point to /var/www/html/webapp
#sudo sed -i 's|root /var/www/html;|root /var/www/html/webapp;|' /etc/nginx/sites-available/default

# Ensure autoindex directive is present
#if ! grep -q "autoindex" /etc/nginx/sites-available/default; then
 #   echo '  autoindex on;' | sudo tee -a /etc/nginx/sites-available/default > /dev/null
#fi

# Set file permissions for webapp directory
#sudo chown -R www-data:www-data /var/www/html/webapp
#sudo chmod -R 755 /var/www/html/webapp

# Test Nginx configuration
#if sudo nginx -t; then
 #   echo "Nginx configuration is valid."
#else
 #   echo "Nginx configuration has errors. Please fix them and try again."
  #  exit 1  # Exit the script if the configuration test fails
#fi

# Allow Nginx through UFW
#sudo ufw allow 'Nginx Full'

# Restart Nginx to apply changes
#sudo systemctl restart nginx
#echo "Nginx configuration updated, server restarted, and web application setup complete."

