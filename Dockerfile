# 1. PHP + Apache base image
FROM php:8.2-apache

# 2. Apache mod_rewrite enable (useful for routing or frameworks)
RUN a2enmod rewrite

# 3. Project code ko Apache ke root folder me copy karo
COPY . /var/www/html/

# 4. Permissions set karo (optional)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
