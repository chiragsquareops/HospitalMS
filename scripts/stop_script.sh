#!/bin/bash

echo "Application is running"
cd /var/www/hospitalMS
sudo systemctl stop nginx
echo "Application is stopped"