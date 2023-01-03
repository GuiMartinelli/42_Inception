#!/bin/sh

sed -i "s|listen = 127.0.0.1:9000|listen = 8000|g" \
/etc/php8/php-fpm.d/www.conf && \
sed -i "s|;listen.owner = nobody|listen.owner = nobody|g" \
/etc/php8/php-fpm.d/www.conf && \
sed -i "s|;listen.group = nobody|listen.group = nobody|g" \
/etc/php8/php-fpm.d/www.conf

php-fpm8 --nodaemonize
