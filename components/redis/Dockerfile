From redis:5.0.5-alpine

LABEL maintainer="Leo.Mu <whatissrc@gmail.com> 2019-07-12"

# # 时区设置
# ENV TZ=Asia/Shanghai

# # 默认使用阿里云
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
# # 默认时区为上海
# RUN apk update \
#     && apk add tzdata \
#     && cp /usr/share/zoneinfo/$TZ /etc/localtime \
#     && apk del tzdata
