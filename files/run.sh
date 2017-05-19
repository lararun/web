#!/bin/sh
php-fpm7
nginx
tail -f /var/log/nginx/error.log