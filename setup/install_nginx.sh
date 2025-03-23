#!/bin/bash
set -e

echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "Installing Nginx..."
sudo apt install -y nginx

echo "Starting and enabling Nginx service..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Installing Certbot for Let's Encrypt SSL..."
sudo apt install -y certbot python3-certbot-nginx

echo "Obtaining SSL certificate (Ensure domain is pointing to this server)..."
sudo certbot --nginx -d example.com -d www.example.com --non-interactive --agree-tos -m your-email@example.com

echo "Reloading Nginx to apply SSL certificate..."
sudo systemctl reload nginx

echo "Nginx setup completed successfully!"
