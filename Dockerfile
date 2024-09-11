FROM php:8.2-apache

# Instalar extensões necessárias para PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Habilitar o módulo de reescrita do Apache
RUN a2enmod rewrite

# Configurar Apache para permitir uso do .htaccess
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
