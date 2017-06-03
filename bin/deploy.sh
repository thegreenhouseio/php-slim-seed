#!/bin/bash

# assumes build.sh has been run

echo "preparing deployment directory..."
sudo rm -rvf /var/www/thegreenhouse/html/*.phar
sudo rm -rvf /var/www/thegreenhouse/html/*.php

echo "deploying project..."
sudo cp -v build/as-api.phar /var/www/thegreenhouse/html/
sudo cp -v build/controller.php /var/www/thegreenhouse/html/