#!/bin/sh

# add npm package
sudo rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm

# update epel-release
yum remove -y epel-release
yum install -y epel-release

# install docker
yum install -y docker-io
sudo /etc/init.d/docker start
sudo /etc/init.d/docker enable

# install nginx
yum install -y nginx --enablerepo=nginx

# install ruby
yum install -y ruby ruby-devel gcc make rubygems gcc-c++ g++ libxml2 libxml2-devel

# install emacs
yum install -y emacs

# install tmux
yum install -y tmux

# open port 80
# firewall-cmd --zone=public --add-port=80/tcp --permanent
# firewall-cmd --reload

# create user
adduser makky
passwd makky

# add group
usermod -G wheel makky
# sed "s/\%wheel        ALL=(ALL)       NOPASSWD: ALL/# \%wheel        ALL=(ALL)       NOPASSWD: ALL/g" /etc/sudoers