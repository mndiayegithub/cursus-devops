#!/bin/bash
sudo yum -y update

# install sensu
git clone https://github.com/mndiayegithub/sensu-go-workshop.git
cd sensu-go-workshop

# docker-compose initialization
sudo docker-compose up -d | docker-compose up -d
source .envrc
env | grep SENSU

# Install sensuctl
curl -LO "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/${SENSU_VERSION}/sensu-go_${SENSU_VERSION}_linux_amd64.tar.gz"
tar -xzf "sensu-go_${SENSU_VERSION}_linux_amd64.tar.gz" -C /usr/local/bin/