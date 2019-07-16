#!/bin/bash
# install
curl -fsS https://oss.yefxx.cn/download/docker_install.sh |sudo bash  -
sudo sh get-install.sh 
sudo rm -rf get-install.sh
sudo usermod -a -G docker $USER
#uninstall
# sudo apt-get purge docker-ce
# sudo rm -rf /var/lib/docker
