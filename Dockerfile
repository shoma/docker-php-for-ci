FROM circleci/php:7.1.9

RUN sudo apt-get update \
    && sudo apt-get install -y zlib1g-dev \
    && sudo apt-get clean \
    && sudo docker-php-ext-install zip \
    && sudo docker-php-ext-install pdo_mysql \
    && sudo docker-php-ext-install opcache \
    && sudo docker-php-ext-enable xdebug
