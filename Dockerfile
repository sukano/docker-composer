FROM composer:latest

RUN apk add freetype-dev libjpeg-turbo-dev libpng-dev libzip-dev \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install gd
