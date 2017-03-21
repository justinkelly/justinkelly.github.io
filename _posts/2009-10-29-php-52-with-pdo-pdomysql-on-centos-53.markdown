--- 
layout: post
title: php 5.2 (with pdo + pdo_mysql) on centos 5.3
published: true
date: 2009-10-29
tags: 
- centos
- linux
- php
---
after installing/removing various php installs from various repos 
- the final solution for php5.2 on centos5.3 is:

{% highlight bash%}
yum install yum-priorities
{% endhighlight %}

create a centos5test .repo file

{% highlight bash%}
vi /etc/yum.repos.d/c5-testing.repo
{% endhighlight %}

and paste in 

{% highlight bash%}
[c5-testing]
name=CentOS-5 Testing 
baseurl=http://dev.centos.org/centos/$releasever/testing/$basearch/
enabled=0
gpgcheck=1
gpgkey=http://dev.centos.org/centos/RPM-GPG-KEY-CentOS-testing
{% endhighlight %}

then run

{% highlight bash%}
yum --enablerepo=c5-testing install php
yum --enablerepo=c5-testing install php-devel php-pear
sudo pecl install PDO_MYSQL
sudo yum --enablerepo=c5-testing install php-mysql
sudo /etc/init.d/httpd restart
{% endhighlight %}
