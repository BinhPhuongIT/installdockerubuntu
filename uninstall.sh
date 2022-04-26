#!/usr/bin/env sh
#set -vx

# Uninstall Docker Engine
# Uninstall the Docker Engine, CLI, and Containerd packages:

sudo apt-get purge docker-ce docker-ce-cli containerd.io
# Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
