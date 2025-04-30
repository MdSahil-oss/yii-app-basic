# Use the official Yii2 PHP image with Apache and PHP 7.4
FROM yiisoftware/yii2-php:7.4-apache

# Set working directory in the container
WORKDIR /app

# Copy application source code into the container
COPY . /app

# Dependencies installation
RUN composer update --prefer-dist
RUN composer install

# Set proper permissions
RUN chown -R www-data:www-data /app \
    && chmod -R 755 /app/runtime /app/web/assets

# Expose Apache HTTP port
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
