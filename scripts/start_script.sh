#!/bin/bash

echo "Application is stopped"
cd /var/www/hospitalMS
sudo systemctl start nginx
echo "Application is running"
sudo chown -R www-data.www-data /var/www/hospitalMS/storage
sudo chown -R www-data.www-data /var/www/hospitalMS/bootstrap/cache
sudo chmod -R 777 storage
sudo chmod -R 777 bootstrap/cache

