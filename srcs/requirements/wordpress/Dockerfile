FROM alpine:3.16
ARG PHP_VERSION=8 \
    DB_NAME \
    DB_USER \
    DB_PASS

RUN apk update && apk upgrade && apk add --no-cache \
    php${PHP_VERSION} \
    php${PHP_VERSION}-fpm \
    php${PHP_VERSION}-mysqli \
    php${PHP_VERSION}-json \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-dom \
    php${PHP_VERSION}-exif \
    php${PHP_VERSION}-fileinfo \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-openssl \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-redis \
    wget

WORKDIR /var/www

RUN wget http://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz && \
    cp -rf wordpress/* . && \
    rm -rf wordpress latest.tar.gz

COPY ./conf/set_wp.sh /bin/

RUN sh /bin/set_wp.sh && \
    rm /bin/set_wp.sh

RUN chown -R nobody:nobody /var/www/

CMD ["/usr/sbin/php-fpm8", "-F"]
