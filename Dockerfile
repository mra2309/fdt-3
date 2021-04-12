FROM php:7.4-apache
RUN if command -v a2enmod >/dev/null 2>&1; then \
        a2enmod rewrite headers \
    ;fi
RUN chmod -R 0755 /var/www/html
RUN docker-php-ext-install mysqli pdo pdo_mysql gettext