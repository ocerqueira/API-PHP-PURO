FROM php:8.3-apache

# Instalar extensões necessárias para PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Habilitar o módulo de reescrita do Apache
RUN a2enmod rewrite
