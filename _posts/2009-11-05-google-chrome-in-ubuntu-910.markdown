--- 
layout: post
title: "google chrome in ubuntu 9.10 "
published: true
date: 2009-11-05
tags: chrome linux ubuntu
---
edit the apt sources file

``` shell
sudo gedit /etc/apt/sources.list
```

add in

``` shell
deb http://ppa.launchpad.net/chromium-daily/ppa/ubuntu karmic main
deb-src http://ppa.launchpad.net/chromium-daily/ppa/ubuntu karmic main
```

then add in the apt key

``` shell
sudo apt-key adv --recv-keys --keyserver http://keyserver.ubuntu.com 0xfbef0d696de1c72ba5a835fe5a9bf3bb4e5e17b5
```

then update apt and install chrome

``` shell
sudo apt-get update
sudo apt-get install chromium-browser
```
