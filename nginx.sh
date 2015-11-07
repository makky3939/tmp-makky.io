#!/bin/sh

rm /etc/nginx/conf.d/*

cp /home/makky/makky.io/nginx/* /etc/nginx/conf.d/

sudo /etc/init.d/nginx restart
