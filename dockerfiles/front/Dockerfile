FROM php:7.2-apache

RUN apt-get update

# installation extension php : pdo_mysql
RUN apt-get install zlib1g-dev
RUN docker-php-ext-install pdo_mysql

# installation de composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#   dépendences de composer
RUN apt install -y git zip

# gestion des droits

RUN apt install -y acl

# configuration apache

ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
