#!/bin/bash
echo "Updating the System"
sudo apt update -y

echo "Installing Utilities"
sudo apt install zip unzip -y 

echo "Installing NGINX Web Server"
sudo apt install nginx -y

echo "Cleanup Document Root"
sudo rm -rf /var/www/html

echo "Clone Login App"
sudo git clone https://github.com/kalyangali12/login-2501.git /var/www/html

echo "Finished Deployment Process"
