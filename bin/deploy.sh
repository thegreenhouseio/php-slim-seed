#!/bin/bash

# assumes build.sh has been run

echo "preparing deployment directory..."
sudo rm -rvf /var/www/analogstudios/html/*.phar
sudo rm -rvf /var/www/analogstudios/html/*.php

echo "deploying project..."
sudo cp -v build/as-api.phar /var/www/analogstudios/html/
sudo cp -v build/controller.php /var/www/analogstudios/html/