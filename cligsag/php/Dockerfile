ARG COMPOSER_VERSION
ARG PHP_VERSION

FROM php:${PHP_VERSION}-fpm

ARG COMPOSER_VERSION
ARG PHP_VERSION

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    intl \
    opcache \
    pdo_mysql \
    xdebug

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash && apt-get install -y symfony-cli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION}
