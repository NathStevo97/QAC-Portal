#!/bin/sh

# update and installing dependencies
sudo apt-get update
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install default-jre

# install docker and adding user to docker group
sudo curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
reset

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
