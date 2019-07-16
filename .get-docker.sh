#!/bin/bash
# install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh 
sudo rm -rf get-docker.sh
sudo usermod -aG docker your-user
#uninstall
sudo apt-get purge docker-ce
sudo rm -rf /var/lib/docker
