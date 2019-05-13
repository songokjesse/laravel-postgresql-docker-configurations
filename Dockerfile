FROM php:7.1.3-fpm-alpine

RUN apk update && apk add build-base

RUN apk add postgresql postgresql-dev \
  && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
  && docker-php-ext-install pdo pdo_pgsql pgsql

RUN apk add zlib-dev git zip \
  && docker-php-ext-install zip


