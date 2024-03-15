FROM php:8.3-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

# here we have not given any command for this container and since we have not given any command
# it will by default run base image command 

# it is based on linux and this image restricting write access to this container so we need 
RUN chown -R www-data:www-data /var/www/html
# www-data user by default created by php