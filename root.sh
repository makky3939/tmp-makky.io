#!/bin/sh

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
sed "s/\%wheel        ALL=(ALL)       NOPASSWD: ALL/# \%wheel        ALL=(ALL)       NOPASSWD: ALL/g" /etc/sudoers