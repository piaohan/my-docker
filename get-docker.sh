#!/bin/bash
# install
curl -fsSL https://get.docker.com -o get-install.sh
sudo sh get-install.sh 
sudo rm -rf get-install.sh
sudo usermod -a -G docker $USER
#uninstall
# sudo apt-get purge docker-ce
# sudo rm -rf /var/lib/docker
