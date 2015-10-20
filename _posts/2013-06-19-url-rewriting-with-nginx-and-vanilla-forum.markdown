---
layout: post
title: "URL rewriting with Nginx and Vanilla forum"
date: 2013-06-19 04:47
comments: true
tags: [ nginx, apache ]
---
![](http://nginx.org/nginx.gif Nginx logo %}

Having just migrated a number of sites from Apache to the Nginx webserver here's the below Nginx config to get URL rewriting working correctly with Vallia Forums

    location /forum {try_files $uri $uri/ @forum;}
    location @forum {rewrite ^/forum(.+)$ /forum/index.php?p=$1 last;}

This assumes you already have the configs to get PHP working with Nginx and have the forum installed at `/forum`

A number of forum posts detail a much more complex way to get Vanilla working - but as long as you have PHP running fine all you need is the above config and it'll work
