#!/bin/bash
echo "Preparando..."
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb https://download.docker.com/linux/debian stretch stable' > /etc/apt/sources.list.d/docker.list
echo "Atualizando..."
apt-get -y update
apt-get -y remove docker docker-engine docker.io
echo "Instalando..."
apt-get -y install docker-ce
echo "Testando docker Hello World..."
docker run hello-world
