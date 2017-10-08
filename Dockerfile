FROM php:rc-fpm-alpine
MAINTAINER benedikt.franke@twofour.de

ENV PHP_MAX_EXECUTION_TIME=240
ENV PHP_MEMORY_LIMIT=128M
ENV PHP_MAX_INPUT_VARS=4096

RUN apk --no-cache update \
    && apk add --no-cache \
        php7-gd \
        php7-pdo_mysql

COPY content /

WORKDIR /var/www/html
