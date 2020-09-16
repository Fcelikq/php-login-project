FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN mkdir /app \
 && mkdir /app/keytorc-php-mysql-compose-demo \
 && mkdir /app/keytorc-php-mysql-compose-demo/www

COPY www/ /app/keytorc-php-mysql-compose-demo/www/

RUN cp -r /app/keytorc-php-mysql-compose-demo/www/* /var/www/html/.
