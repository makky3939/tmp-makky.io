#!/bin/sh

rm /etc/nginx/conf.d/*

cp /tmp/makky.io/nginx/* /etc/nginx/conf.d/

sudo /etc/init.d/nginx restart