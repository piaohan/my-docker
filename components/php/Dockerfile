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
    php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ && \
    composer self-update


CMD [ "/bin/sh" , "php-fpm" , "composer" ]


