#!/bin/bash
install-docker () {
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
}

install-compose () {
  sudo apt install -y python3-pip
  sudo pip3 install docker-compose
}

last(){
sudo usermod -a -G docker $USER
}

install-docker
install-compose
last
