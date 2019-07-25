FROM muyong/node

LABEL maintainer="Leo.Mu <whatissrc@gmail.com>"

ARG TIMEZONE

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
    tzdata \
    && cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && apk del --no-cache  tzdata \
    && rm -rf /var/cache/apk/* \
    && npm config set registry http://registry.npm.taobao.org 

WORKDIR /home

ENTRYPOINT ["npm"]

EXPOSE 8081 8082 8083