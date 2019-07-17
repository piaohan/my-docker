#!/bin/bash
install-docker () {
sudo apt update
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# 需要root执行 key
# curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
# sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
}

install-compose () {
  sudo apt update
  sudo apt install -y python3-pip
  sudo pip3 install docker-compose
}

last(){
sudo usermod -a -G docker $USER
newgrp docker
echo -e "\033[5;32m docker version \033[0m"
docker -v
echo -e "\033[5;32m docker-compose version \033[0m"
docker-compose -v
}

install-docker
install-compose
last
