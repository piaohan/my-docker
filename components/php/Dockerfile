FROM alpine

LABEL maintainer "Leo.Mu <whatissrc@gmail.com>"

# 时区设置
ENV TIMEZONE Asia/Shanghai
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories  | \
    && apk update \
    && apk add \
    libzip-dev \
    tzdata \
    && cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && docker-php-ext-install -j $(nproc) zip \
    && apk del --no-cache  tzdata  libzip-dev\
    && rm -rf /var/cache/apk/* \
    && curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www/
