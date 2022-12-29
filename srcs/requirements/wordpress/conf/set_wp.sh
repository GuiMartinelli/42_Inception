#!/bin/sh

sed -i "s|listen = 127.0.0.1:9000|listen = 9000|g" \
/etc/php8/php-fpm.d/www.conf && \
sed -i "s|;listen.owner = nobody|listen.owner = nobody|g" \
/etc/php8/php-fpm.d/www.conf && \
sed -i "s|;listen.group = nobody|listen.group = nobody|g" \
/etc/php8/php-fpm.d/www.conf && \
sed -i "s|username_here|$DB_USER|g" \
/var/www/wp-config-sample.php && \
sed -i "s|password_here|$DB_PASS|g" \
/var/www/wp-config-sample.php && \
sed -i "s|localhost|mariadb|g" \
/var/www/wp-config-sample.php && \
sed -i "s|database_name_here|$DB_NAME|g" \
/var/www/wp-config-sample.php && \
echo "define('FS_METHOD','direct');" >> \
/var/www/wp-config-sample.php && \
echo "define( 'WP_REDIS_HOST', 'redis' );" >> \
/var/www/wp-config-sample.php && \
echo "define( 'WP_REDIS_PORT', 6379 );" >> \
/var/www/wp-config-sample.php && \
echo "define( 'WP_REDIS_TIMEOUT', 1 );" >> \
/var/www/wp-config-sample.php && \
echo "define( 'WP_REDIS_READ_TIMEOUT', 1 );" >> \
/var/www/wp-config-sample.php && \
echo "define( 'WP_REDIS_DATABASE', 0 );" >> \
/var/www/wp-config-sample.php && \
cp /var/www/wp-config-sample.php /var/www/wp-config.php