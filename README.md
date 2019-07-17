# 前言
[php-fpm7.0配置及描述](https://hub.docker.com/r/muyong/php7.0-fpm/) ---多年以前,本打算详细写完,现在已经废弃

---
<h1 align="center">新 的 开 始</h1>


# 目前编排的镜像📝

* php7.2
* mysql5.7
* nginx
* redis
* beanstalkd

后面会慢慢加。。。

# 简介 👇

> 新的镜像使用alpine 进行构建（而原镜像使用的是ubuntu）,使镜像文件大小从几百M 变为几十M

* PHP:的镜像大小对比

<img src="https://s2.ax1x.com/2019/07/12/ZfKFx0.png" width = "300" height = "200" alt="镜像大小对比" 
align=center>
* nginx 镜像大小对比

<img src="https://s2.ax1x.com/2019/07/15/Zo1IyQ.png" width = "300" height = "200" alt="镜像大小对比" 
align=center>

# 怎么玩？ 🚀 

我使用的环境是ubuntu16.04
```shell
#1.脚本自动安装docker和docker-compose（已经安装请跳过这一步）
    #1.克隆项目
    git clone https://github.com/piaohan/my-docker.git
    
    #2.进入项目
    cd my-docker
    
    #3.将脚本修改为可执行(如果第4步命令可以执行 请跳过这一步)
    chmod +x get-docker.sh
    
    #4.执行该脚本（不能执行，请参考上一步）
    ./get-docker.sh

#2.使用docker-compose编排自动构建环境(相关的环境需求可以修改 docker-compose.yml 文件)
    #1.启动(首次运行请加上 --build 参数)
    docker-compose up -d [--build] 
    
    #2.停止并销毁容器
    docker-compose down
    
    #3.更多相关指令 请使用 -h 查看
```
# 有一点想法的 🤔
> 其实 我是想直接一个脚本 然后就安装并且部署docker环境的，只是觉得不是很合适。
> 所以还是分的2步：1.是安装docker环境 2.是执行docker-compose编排

# 注意 ⭐

> 1.使用docker需要知道镜像和容器的概念，注意分区

> 2.希望能给我提供宝贵的建议，不要忘了给我个星星 谢谢