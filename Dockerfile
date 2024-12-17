FROM php:8.3-apache

RUN a2enmod ssl
COPY apache2/ /etc/apache2/
