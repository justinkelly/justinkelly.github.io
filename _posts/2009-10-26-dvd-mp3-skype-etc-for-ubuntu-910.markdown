--- 
layout: post
title: DVD, MP3, Skype, etc.. for Ubuntu 9.10
published: true
date: 2009-10-26
tags: 
- linux
- media
- ubuntu
---

```
echo deb http://packages.medibuntu.org/ karmic free non-free | sudo tee -a /etc/apt/sources.list
wget -q http://packages.medibuntu.org/medibuntu-key.gpg -O- | sudo apt-key add - && sudo apt-get update
```

for dvd

```
sudo apt-get install libdvdcss2
```

for MP3, flash, etc..

```
sudo apt-get install ubuntu-restricted-extras
```

for skype

```
sudo apt-get install skype
```
