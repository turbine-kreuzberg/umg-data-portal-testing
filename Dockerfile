FROM php:7.0.7-cli

RUN docker-php-ext-install pdo_mysql

RUN apt-get update
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip

ADD https://getcomposer.org/installer composer-setup.php
RUN php composer-setup.php && unlink composer-setup.php
