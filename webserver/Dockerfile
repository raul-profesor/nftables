FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    nginx \
    php-fpm \
    php-mysql \
    php-cli \
    php-curl \
    php-xml \
    php-mbstring \
    php-json \
    php-zip \
    mysql-client \
    wget \
    curl \
    php-mysqli \
    php-pdo \
    php-pdo-mysql \
    gnupg vim tcpdump&& \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN systemctl enable nginx \
    && systemctl enable php7.4-fpm

COPY default.conf /etc/nginx/sites-available/default

COPY /app/php-e-commerce /var/www/html

RUN chown -R www-data:www-data /var/www/html

RUN echo "listen = 0.0.0.0:9000" >>  /etc/php/7.4/fpm/pool.d/www.conf

RUN service php7.4-fpm restart

EXPOSE 80

EXPOSE 9000

#