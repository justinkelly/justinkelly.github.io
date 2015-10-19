--- 
layout: post
title: "Ubuntu 10.04 : how to move window buttons to the right"
published: true
date: 2010-05-18
categories: 
- ubuntu
posterous_url: http://blog.justin.kelly.org.au/ubuntu-1004-how-to-move-window-buttons-to-the
posterous_slug: ubuntu-1004-how-to-move-window-buttons-to-the
---
just installed ubuntu 10.04 and the left hand window buttons/icons things are 
driving me crazy

quickest solution i could find is the command below

```
gconftool-2 --type string --set /apps/metacity/general/button_layout "menu:minimize,maximize,close"
```

![](http://i.minus.com/juCaqGy6FvJJe.jpg)
