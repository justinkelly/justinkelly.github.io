---
layout: post
title: MySQL autostart on centos
published: true
tags: centos linux mysql
comments: true
---
Just setup mysql on centos and forgot to set it to auto-start on boot - there the quick fix

``` shell
sudo /sbin/chkconfig --level 2345 mysqld on
```

check that this worked as expected by running the chkconfig list

``` shell
/sbin/chkconfig --list
```

should result in the below output

``` conf
mysqld          0:off  1:off  2:on  3:on  4:on  5:on  6:off
```
