# Use an Ubuntu base image
FROM ubuntu:20.04

# Set non-interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages for Nginx, PHP, and MySQL
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
    gnupg vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

    # Enable PHP-FPM and Nginx services
RUN systemctl enable nginx \
    && systemctl enable php7.4-fpm

# Copy the Nginx configuration file
#COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/sites-available/default

COPY /app/php-e-commerce /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN echo "listen = 0.0.0.0:9000" >>  /etc/php/7.4/fpm/pool.d/www.conf
RUN service php7.4-fpm restart
# Expose Nginx port
EXPOSE 80
EXPOSE 9000

# Copy your web app to the default web directory


# Set permissions for the web directory


# FROM php:7.4-fpm

# # Install Nginx and PHP with necessary extensions for MySQL
# RUN apt-get update && \
#     apt-get install -y nginx vim &&\
#     docker-php-ext-install mysqli pdo pdo_mysql &&\
#     rm -rf /var/lib/apt/lists/*

# RUN docker-php-ext-enable mysqli

# # Copy the PHP web app to the container
# COPY default.conf /etc/nginx/conf.d/default.conf
# COPY ./app/php-e-commerce /var/www/html/index.php

# WORKDIR /var/www/html/


