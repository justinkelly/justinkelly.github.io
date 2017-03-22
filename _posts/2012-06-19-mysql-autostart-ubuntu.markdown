---
layout: post
title: "Autostart MySQL on Ubuntu"
date: 2012-06-19 23:21
comments: true
tags: mysql ubuntu
---

When I setup a new VPS I'm always forgetting to set MySQL to auto start on boot

Heres the command:

``` shell
sudo update-rc.d mysql defaults
```

``` shell
update-rc.d: warning: /etc/init.d/mysql missing LSB information
update-rc.d: see <http://wiki.debian.org/LSBInitScripts>
Adding system startup for /etc/init.d/mysql ...
/etc/rc0.d/K20mysql -> ../init.d/mysql
/etc/rc1.d/K20mysql -> ../init.d/mysql
/etc/rc6.d/K20mysql -> ../init.d/mysql
/etc/rc2.d/S20mysql -> ../init.d/mysql
/etc/rc3.d/S20mysql -> ../init.d/mysql
/etc/rc4.d/S20mysql -> ../init.d/mysql
/etc/rc5.d/S20mysql -> ../init.d/mysql
```

Info on how to do this in CentOS/RedHat

 * [http://blog.justin.kelly.org.au/mysql-autostart-on-centos/](http://blog.justin.kelly.org.au/mysql-autostart-on-centos/)