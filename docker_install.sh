#!/bin/bash

echo "start install yum-utils..."
sudo yum install -y yum-utils

echo "start install docker-ce repo..."
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

echo "start install docker..."
yum -y install docker-ce

echo "start docker service"
systemctl start docker 
systemctl enable docker

echo "Done..."