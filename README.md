# 前言
[php-fpm7.0配置及描述](https://hub.docker.com/r/muyong/php7.0-fpm/) ---多年以前,本打算详细写完,现在已经废弃

---
<h1 align="center">新 的 开 始</h1>


# docker自建镜像

* php7
* mysql5.7
* nginx
* redis

# 简介

> 新的镜像使用alpine 进行构建（原镜像使用的是ubuntu）,使镜像文件大小从几百M 变为几十M

* PHP:的镜像大小对比
![镜像大小对比](https://s2.ax1x.com/2019/07/12/ZfKFx0.png "镜像大小的对比")
* nginx 镜像大小对比
![镜像大小对比](https://s2.ax1x.com/2019/07/15/Zo1IyQ.png "镜像大小的对比")

# 注意

> 目前 dockerfile 的版本，我还在完善中，如果想尝试使用可以先使用 标签 v1.0
> 希望能给我提供宝贵的建议，不要忘了给我个星星 谢谢