#!/bin/bash

# assumes build.sh has been run

echo "preparing deployment directory..."
sudo rm -rvf /var/www/html/*.phar
sudo rm -rvf /var/www/html/*.php

echo "deploying project..."
sudo cp -v build/tgh-api.phar /var/www/html/
sudo cp -v build/controller.php /var/www/html/