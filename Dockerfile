FROM composer/composer:1.1

RUN docker-php-ext-install pdo_mysql

RUN apt-get update
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip
