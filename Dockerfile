FROM php:8.3-apache

RUN apt -y update && \
    apt install -y libapache2-mod-auth-openidc && \
    a2enmod ssl

COPY apache2/ /etc/apache2/
COPY html/ /var/www/html/
