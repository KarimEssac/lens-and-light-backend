FROM php:8.2-cli

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    && docker-php-ext-install pdo pdo_mysql mysqli

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader

# Expose port
EXPOSE 8000

# Start application (with error handling)
CMD php artisan config:cache && \
    php artisan migrate --force && \
    php artisan serve --host=0.0.0.0 --port=${PORT:-8000}
