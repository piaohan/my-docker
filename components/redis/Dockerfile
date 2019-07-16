From muyong/redis

LABEL maintainer="Leo.Mu <whatissrc@gmail.com>"

ENV TIMEZONE Asia/Shanghai
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories  | \
    && apk update \
    && apk add \
    tzdata \
    && cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && apk del --no-cache  tzdata \
    && rm -rf /var/cache/apk/* 

WORKDIR /var/www/