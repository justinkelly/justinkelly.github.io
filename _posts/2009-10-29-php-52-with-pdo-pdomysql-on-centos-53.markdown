--- 
layout: post
title: php 5.2 (with pdo + pdo_mysql) on centos 5.3
published: true
date: 2009-10-29
tags: 
- centos
- linux
- php
posterous_url: http://blog.justin.kelly.org.au/php-52-with-pdo-pdomysql-on-centos-53
posterous_slug: php-52-with-pdo-pdomysql-on-centos-53
---
after installing/removing various php installs from various repos 
- the final solution for php5.2 on centos5.3 is:

```
yum install yum-priorities
```
create a centos5test .repo file

```
vi /etc/yum.repos.d/c5-testing.repo
```
and paste in 
```
[c5-testing]
name=CentOS-5 Testing 
baseurl=http://dev.centos.org/centos/$releasever/testing/$basearch/
enabled=0
gpgcheck=1
gpgkey=http://dev.centos.org/centos/RPM-GPG-KEY-CentOS-testing
```

then run

```
yum --enablerepo=c5-testing install php
yum --enablerepo=c5-testing install php-devel php-pear
sudo pecl install PDO_MYSQL
sudo yum --enablerepo=c5-testing install php-mysql
sudo /etc/init.d/httpd restart
```
