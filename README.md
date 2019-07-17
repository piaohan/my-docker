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
<img src="https://s2.ax1x.com/2019/07/12/ZfKFx0.png" width = "300" height = "300" alt="镜像大小对比" 
align=center>
* nginx 镜像大小对比
<img src="https://s2.ax1x.com/2019/07/15/Zo1IyQ.png" width = "300" height = "300" alt="镜像大小对比" 
align=center>

# 使用方法

```shell
#1.脚本自动安装docker和docker-compose（已经安装请跳过这一步）
    #1.克隆项目
    git clone https://github.com/piaohan/my-docker.git
    #2.进入项目
    cd my-docker
    #3.将脚本修改为可执行
    chmod +x get-docker.sh
    #4.执行该脚本
    ./get-docker.sh
#2.使用docker-compose编排自动构建环境(相关的环境需求可以修改 docker-compose.yml 文件)
    #1.启动(首次运行请加上 --build 参数)
    docker-compose up -d [--build] 
    #2.停止并销毁容器
    docker-compose down
    #3.更多相关指令 请使用 -h 查看
```
# 注意

> 使用docker需要知道镜像和容器的概念，注意分区
> 希望能给我提供宝贵的建议，不要忘了给我个星星 谢谢