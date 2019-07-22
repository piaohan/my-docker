FROM golang:alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories   \
    && apk update \
    && apk --no-cache add --virtual build-dependencies \
    git \
    tzdata \
    && mkdir -p /root/gocode \
    && export GOPATH=/root/gocode \
    && go get github.com/mailhog/MailHog \
    && mv /root/gocode/bin/MailHog /usr/local/bin \
    && cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && apk del --no-cache  tzdata \
    && apk del --purge build-dependencies \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/gocode \
    && adduser -D -u 1000 mailhog

USER mailhog

WORKDIR /home/mailhog

ENTRYPOINT ["MailHog"]

# Expose the SMTP and HTTP ports:
EXPOSE 1025 8025
