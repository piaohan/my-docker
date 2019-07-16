FROM alpine
LABEL maintainer="Leo.Mu <whatissrc@gmail.com>"

RUN apk add --no-cache beanstalkd

EXPOSE 11300
ENTRYPOINT ["/usr/bin/beanstalkd"]