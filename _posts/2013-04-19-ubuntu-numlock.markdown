---
layout: post
title: "Ubuntu Numlock"
date: 2013-04-19 00:37
comments: true
categories: ubuntu, linux
---

If your using a smaller Ubuntu or Debian based distro (lubuntu, solusOS, etc..) you'll often find that numlock on the keyboard isn't turned on my default.
Just paste the below commands into the commandline and numlock will be on by default.

``` bash
    sudo apt-get update
    sudo apt-get -y install numlockx
    sudo sed -i 's|^exit 0.*$|# Numlock enable\n[ -x /usr/bin/numlockx ] \&\& numlockx on\n\nexit 0|' /etc/rc.local
```
