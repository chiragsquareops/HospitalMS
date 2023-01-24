#!/bin/bash

echo "Application is stopped"
cd /var/www/hospitalMS
sudo systemctl start nginx
echo "Application is running"