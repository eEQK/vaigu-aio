#!/bin/bash
sudo service php8.3-fpm stop
sudo service nginx stop

(cd canaryaac && composer install)

sed -i "s|URL=.*|URL='http://localhost:8000'|" canaryaac/.env
sed -i "s|SERVER_PATH=.*|SERVER_PATH='/workspaces/multi/otserver'|" canaryaac/.env
sed -i "s|DB_HOST=.*|DB_HOST='127.0.0.1'|" canaryaac/.env
sed -i "s|DB_NAME=.*|DB_NAME='vaigu'|" canaryaac/.env
sed -i "s|DB_USER=.*|DB_USER='canary'|" canaryaac/.env
sed -i "s|DB_PASS=.*|DB_PASS='canary'|" canaryaac/.env
sed -i "s|DB_PORT=.*|DB_PORT='3306'|" canaryaac/.env


trap 'kill %1; kill %2' SIGINT

sudo php-fpm8.3 -R --nodaemonize &
sudo nginx -g "daemon off;" &

# I should probably eventually fix it but I'm tired 
# of playing with permissions and configs of php-fpm and nginx
sleep 1
sudo chmod 766 /run/php/php8.3-fpm.sock

wait
