FROM muyong/php7

LABEL maintainer "Leo.Mu <whatissrc@gmail.com>"

ARG TIMEZONE
ARG COMPOSER_ALLOW_SUPERUSER

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories   \
    && apk update \
    && apk add --no-cache \
    libzip-dev \
    tzdata \
    && cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && docker-php-ext-install -j $(nproc) zip \
    && apk del --no-cache  tzdata  libzip-dev\
    && rm -rf /var/cache/apk/* \
    && curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

WORKDIR /var/www/
