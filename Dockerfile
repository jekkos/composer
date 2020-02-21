FROM php:7.4.3-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_HOME=/tmp
ENV COMPOSER_VERSION=1.9.3

RUN docker-php-ext-install gd

WORKDIR /app

ENV PATH="/usr/bin:${PATH}"

CMD ["/usr/bin/composer"]
