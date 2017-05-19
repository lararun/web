#!/bin/sh
php-fpm7
nginx
echo "" > /home/storage/logs/lumen.log
echo "" > /home/storage/logs/laravel.log
chmod -R 777 /home/storage
tail -f /home/storage/logs/lumen.log &
tail -f /home/storage/logs/laravel.log