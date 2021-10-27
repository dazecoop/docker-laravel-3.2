FROM php:5.6-apache

RUN a2enmod rewrite

RUN service apache2 restart

RUN apt-get update && \
    apt-get install -y libmcrypt-dev

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mcrypt
