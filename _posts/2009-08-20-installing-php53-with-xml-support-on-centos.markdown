--- 
layout: post
title: installing php5.3 with xml support on centos
published: true
date: 2009-08-20
tags: 
- centos
- linux
- php
---

just setup a new vps with centos and needed the latest php5.3 - heres the shortcuts

```bash
sudo rpm --import http://repo.webtatic.com/yum/RPM-GPG-KEY-webtatic-andy
cd /etc/yum.repos.d/
sudo wget http://repo.webtatic.com/yum/webtatic.repo
sudo yum --enablerepo=webtatic update php
```

php-xml is not availble in the webtatic repo - you can manually download the rpm from fubra with wget

```bash
sudo wget http://mirror.fubra.com/php-5.3-repo/5/i386/php-xml-5.3.0-3.i386.rpm
sudo rpm -ivh php-xml-5.3.0-3.i386.rpm
```

restart apache, check you php.ini and away you go

refer: [webtatic blog post](http://www.webtatic.com/blog/2009/06/php-530-on-centos-5/) for more info
