#!/bin/bash
yum update -y

# apache
yum install -y httpd
systemctl start httpd.service
systemctl enable httpd.service

# php
amazon-linux-extras install -y php7.3

# mysql
wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
yum localinstall -y mysql57-community-release-el7-11.noarch.rpm 
yum install -y mysql-community-server
systemctl start mysqld.service
systemctl enable mysqld.service

# nodejs/npm
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs