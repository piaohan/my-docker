FROM alpine

LABEL maintainer "Leo.Mu <whatissrc@gmail.com>"

# 时区设置
ENV TIMEZONE Asia/Shanghai
ENV PHP_MEMORY_LIMIT 512M
ENV MAX_UPLOAD 50M
ENV PHP_MAX_FILE_UPLOAD 200
ENV PHP_MAX_POST 100M
ENV COMPOSER_ALLOW_SUPERUSER 1

# 默认使用阿里云
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 安装php
RUN apk update \
    && apk upgrade \
    && apk add \
    curl \
    tzdata \
    php7-fpm\
    php7 \
    php7-dev \
    php7-apcu \
    php7-bcmath \
    php7-xmlwriter \
    php7-ctype \
    php7-curl \
    php7-exif \
    php7-iconv \
    php7-intl \
    php7-json \
    php7-mbstring\
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    php7-pdo \
    php7-mysqlnd \
    php7-mysqli \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-phar \
    php7-posix \
    php7-session \
    php7-xml \
    php7-simplexml \
    php7-mcrypt \
    php7-xsl \
    php7-zip \
    php7-zlib \
    php7-dom \
    php7-redis\
    php7-tokenizer \
    php7-gd \
    php7-fileinfo \
    php7-zmq \
    php7-memcached \
    php7-xmlreader 
# 默认时区
RUN apk add tzdata \
    && cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    && mkdir  -p /var/log/php-fpm
# 设置
RUN sed -i "s|;*date.timezone =.*|date.timezone = ${TIMEZONE}|i" /etc/php7/php.ini && \
    sed -i "s|;*memory_limit =.*|memory_limit = ${PHP_MEMORY_LIMIT}|i" /etc/php7/php.ini && \
    sed -i "s|;*upload_max_filesize =.*|upload_max_filesize = ${MAX_UPLOAD}|i" /etc/php7/php.ini && \
    sed -i "s|;*max_file_uploads =.*|max_file_uploads = ${PHP_MAX_FILE_UPLOAD}|i" /etc/php7/php.ini && \
    sed -i "s|;*post_max_size =.*|post_max_size = ${PHP_MAX_POST}|i" /etc/php7/php.ini && \
    sed -i "s|;*cgi.fix_pathinfo=.*|cgi.fix_pathinfo= 0|i" /etc/php7/php.ini
       
# 安装composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www/
