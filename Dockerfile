FROM php:8.2-apache

# Copiar todo el proyecto
COPY . /var/www/html/

# Cambiar DocumentRoot
RUN sed -ri -e 's!/var/www/html!/var/www/html/Proyecto solicitudes!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/Proyecto solicitudes!g' /etc/apache2/apache2.conf
