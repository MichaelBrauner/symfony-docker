ARG PHP_VERSION=8.1
ARG NGINX_VERSION=1.18

FROM php:${PHP_VERSION}-fpm-alpine AS app_php
WORKDIR /srv/app

CMD ["php-fpm"]

FROM nginx:${NGINX_VERSION}-alpine as app_nginx
RUN adduser -u 1000 -D -S -G www-data www-data
WORKDIR /srv/app/public

