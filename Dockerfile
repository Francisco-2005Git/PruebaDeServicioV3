FROM php:8.2-apache

RUN a2dismod mpm_event mpm_worker || true
RUN a2enmod mpm_prefork

COPY proyecto_solicitudes-main/ /var/www/html/

EXPOSE 80
