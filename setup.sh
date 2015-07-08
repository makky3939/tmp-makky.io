#!/bin/sh


# add npm package
rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

# update epel-release
yum remove -y epel-release
yum install -y epel-release

# get public keys
curl https://github.com/makky3939.keys > ~/.ssh/authorized_keys

# set sshd_config
sed "s/#RSAAuthentication yes/RSAAuthentication yes/g" /etc/ssh/sshd_config
sed "s/#PubkeyAuthentication yes/PubkeyAuthentication yes/g" /etc/ssh/sshd_config
sed "s/#AuthorizedKeysFile .ssh\/authorized_keys/AuthorizedKeysFile .ssh\/authorized_keys/g" /etc/ssh/sshd_config
sed "s/#PasswordAuthentication no/PasswordAuthentication no/g" /etc/ssh/sshd_config
service sshd restart

# install docker
yum install docker-io

# set service
systemctl start docker.service
systemctl enable docker.service

# install nginx
yum install -y nginx --enablerepo=nginx

# install ruby
yum install -y ruby

# install bundler
gem install bundler
bundle config --global jobs 4

# bundle install
bundle install

# build
# sudo docker build -t mk/nginx:0.2 --no-cache .

# run
# docker run -d -p 80:80 --name nginx1 mk/nginx:0.2 /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

exit 0