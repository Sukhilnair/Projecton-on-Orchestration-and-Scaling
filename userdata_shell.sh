#!/bin/bash

set -e

sudo apt-get update -y
sudo apt-get install -y curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update -y
sudo apt-get install -y docker-ce

sudo docker run --rm hello-world 

sudo curl -L "https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

cd /home/ubuntu/
git clone https://github.com/Sukhilnair/Projecton-on-Orchestration-and-Scaling.git

cd Projecton-on-Orchestration-and-Scaling
sudo docker build -t sukhil-learning:my-app .
sudo docker-compose -f docker-compose.yml up -d
