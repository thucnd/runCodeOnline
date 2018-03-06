#!/bin/bash

# NodeJS Setup requires running script as root (not sudo)

###########################
# Docker SETUP
###########################
判断以下如果安装过docker则不进行安装
rpm -iUvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum update -y
yum install -y docker-io
echo "Docker Setup Complete"

############################
# NodeJS 6 Setup
############################
判断以下如果安装过nodejs则不进行安装
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum -y install nodejs gcc-c++ make
echo "NodeJS Setup Complete"

############################
# Start Docker
############################
chmod 777 ../API/DockerTimeout.sh
chmod 777 ../API/Payload/script.sh
chmod 777 ../API/Payload/javaRunner.sh
chmod 777 UpdateDocker.sh

service docker restart
./UpdateDocker.sh
