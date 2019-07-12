From alpine

LABEL maintainer="Leo.Mu <whatissrc@gmail.com> 2019-07-12"
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories  
RUN apk update \
    && apk add curl  openrc   openssh-server  
RUN sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/g'  /etc/ssh/sshd_config  \
    && rc-update add sshd 
RUN mkdir -p /run/openrc 
RUN touch /run/openrc/softlevel 
RUN /etc/init.d/sshd restart 