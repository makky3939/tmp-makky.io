#!/bin/sh

# create user
adduser makky sudo
passwd makky

# add npm package
rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

# update epel-release
yum remove -y epel-release
yum install -y epel-release

# install docker
yum install -y docker-io

# install nginx
yum install -y nginx --enablerepo=nginx

# install ruby
yum install -y ruby ruby-devel gcc make

# open port 80
firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --reload