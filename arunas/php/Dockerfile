ARG PHP_VERSION 

FROM php:${PHP_VERSION}-fpm

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    @composer \
    intl \
    opcache \
    pdo_mysql \
    xdebug

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash && apt-get install -y symfony-cli
