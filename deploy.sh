#!/bin/bash


if [!-d "/var/www/html/frotend"]
then
    sudo mkdir /var/www/html/frotend
fi

sudo chmod -R +rw /var/www/html/frotend
sudo cp -rf dist/ /var/www/html/frotend
sudo chmod -R -w /var/www/html/frotend