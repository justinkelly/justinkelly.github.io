--- 
layout: post
title: mysql autostart on centos
published: true
date: 2009-08-20
tags: 
- centos
- linux
- mysql
---
just setup mysql on centos and forgot to set it to auto-start on boot - there the quick fix

    sudo /sbin/chkconfig --level 2345 mysqld on

check that this worked as expected by running the chkconfig list

    /sbin/chkconfig --list

should result in the below output

    mysqld          0:off  1:off  2:on  3:on  4:on  5:on  6:off
