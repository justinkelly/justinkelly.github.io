---
layout: post
title: "Ubuntu 10.04 : how to move window buttons to the right"
published: true
tags: ubuntu
---
just installed ubuntu 10.04 and the left hand window buttons/icons things are 
driving me crazy

quickest solution i could find is the command below

``` shell
gconftool-2 --type string --set /apps/metacity/general/button_layout "menu:minimize,maximize,close"
```

<img src="/img/ubuntu-right.png" width="400" alt="">