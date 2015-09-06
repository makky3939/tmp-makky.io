#!/bin/sh

# set service
sudo /etc/init.d/docker start
sudo /etc/init.d/docker enable

# get public keys
mkdir ~/.ssh
curl https://github.com/makky3939.keys > ~/.ssh/authorized_keys

# install bundler
gem install bundler
bundle config --global jobs 4

# bundle install
bundle install

# build
# sudo docker build -t mk/nginx:0.2 --no-cache .

# run
# docker run -d -p 80:80 --name nginx1 mk/nginx:0.2 /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf