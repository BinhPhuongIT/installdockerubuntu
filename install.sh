#!/usr/bin/env sh
#set -vx

echo "Set up the repository"
sudo apt-get update -y
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    apt-transport-https \
    software-properties-common

echo "Add Docker’s official GPG key"
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Add repository docker"
#echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "Install Docker Engine"
sudo apt-get update
sudo apt-cache policy docker-ce
sudo apt install docker-ce -y
#sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "Install Docker compose"
sudo apt install docker-compose -y

echo "Add docker user"
sudo usermod -aG docker $USER
