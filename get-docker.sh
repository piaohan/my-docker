#!/bin/bash
install-docker () {
echo -e "\033[1;32m 1-[1/6]update \033[0m"
sudo apt update
echo -e "\033[1;32m 1-[2/6]remove old docker \033[0m"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
echo -e "\033[1;32m 1-[3/6]install rely on \033[0m"
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# 需要root执行 key
# curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
# sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
echo -e "\033[1;32m 1-[4/6]get key \033[0m"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo -e "\033[1;32m 1-[5/6]add docker repository \033[0m"
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
echo -e "\033[1;32m 1-[6/6]install docker \033[0m"
sudo apt install -y docker-ce
}

install-compose () {
  sudo apt update
  echo -e "\033[1;32m 2-[1/2]install python3pip \033[0m"
  sudo apt install -y python3-pip
  echo -e "\033[1;32m 2-[2/2]install docker-compose \033[0m"
  sudo pip3 install docker-compose
}
update-gourp(){
echo -e "\033[1;32m 3-[1/2]user add to dicker gourp \033[0m"
sudo usermod -a -G docker $USER
echo -e "\033[1;32m 3-[1/2]update gourp \033[0m"
newgrp docker
}

last(){
echo -e "\033[1;32m 4-[1/2]docker version \033[0m"
docker -v
echo -e "\033[1;32m 4-[2/2]docker-compose version \033[0m"
docker-compose -v
}

install-docker
install-compose
update-gourp
last
