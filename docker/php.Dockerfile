# Use the official PHP image with FPM
FROM php:8.0-fpm

# Install extensions
RUN docker-php-ext-install pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Copy application source
COPY src/ /var/www/html

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]