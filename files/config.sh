#!/bin/sh
cp -r /home/install/nginx.conf /etc/nginx/nginx.conf
mkdir /home/public
cp -r /home/install/index.php /home/public/index.php
cp -r /home/install/run.sh /run.sh
chmod +x /run.sh
sed -i "s/max_execution_time = 30/max_execution_time = 300/g" /etc/php7/php.ini
sed -i "s/post_max_size = 8M/post_max_size = 1000M/g" /etc/php7/php.ini
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 1000M/g" /etc/php7/php.ini
sed -i "s/expose_php = On/expose_php = Off/g" /etc/php7/php.ini