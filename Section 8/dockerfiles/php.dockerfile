FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

# here we have not given any command for this container and since we have not given any command
# it will by default run base image command 