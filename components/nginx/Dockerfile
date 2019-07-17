FROM muyong/nginx

LABEL maintainer="Leo.Mu <whatissrc@gmail.com>"

ENV TIMEZONE ${TIMEZONE}

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories   \
    && apk update \
    && apk add --no-cache \
    tzdata \
    && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && apk del --no-cache  tzdata \
    && rm -rf /var/cache/apk/* 

WORKDIR /var/www/