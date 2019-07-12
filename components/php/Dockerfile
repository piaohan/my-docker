FROM php:7.2-fpm-alpine

LABEL maintainer="Leo.Mu <whatissrc@gmail.com> 2019-07-12"

ENV TZ=Asia/Shanghai

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update \
    && apk add tzdata \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && apk del tzdata

