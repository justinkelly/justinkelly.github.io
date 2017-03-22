---
layout: post
title: DVD, MP3, Skype, etc.. for Ubuntu 9.10
published: true
tags: linux media ubuntu
---

``` shell
echo deb http://packages.medibuntu.org/ karmic free non-free | sudo tee -a /etc/apt/sources.list
wget -q http://packages.medibuntu.org/medibuntu-key.gpg -O- | sudo apt-key add - && sudo apt-get update
```

for dvd

``` shell
sudo apt-get install libdvdcss2
```

for MP3, flash, etc..

``` shell
sudo apt-get install ubuntu-restricted-extras
```

for skype

``` shell
sudo apt-get install skype
```
