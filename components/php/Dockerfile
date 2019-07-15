FROM muyong/php7

LABEL maintainer="Leo.Mu <whatissrc@gmail.com> 2019-07-12"

## 时区设置
# ENV TZ=Asia/Shanghai

## 默认使用阿里云
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
## 默认时区为上海
# RUN apk update \
#     && apk add tzdata \
#     && cp /usr/share/zoneinfo/$TZ /etc/localtime \
#     && apk del tzdata

# 安装composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update


