FROM php:8.2-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Copy project files
COPY . /var/www/html/

# Set permissions (optional)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
