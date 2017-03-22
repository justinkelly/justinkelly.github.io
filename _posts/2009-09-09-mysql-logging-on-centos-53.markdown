---
layout: post
title: Mysql logging on CentOS 5.3
published: true
tags: centos linux mysql
---

for whatever reason when i edited my.cnf on CentSO 5.3 the logging options 
were never picked up no matter what i tried

gave up messing with my.cnf and put them directly in the init.d file and all was well

#### 1 
make sure that the log files are available and writeable by the mysql user

#### 2 
edit `/etc/init.d/mysqld`

find the mysqld_safe section and add the `--log**` sections in as below

``` shell
# but we need to be sure.
/usr/bin/mysqld_safe   --datadir="$datadir" --socket="$socketfile"
    --log-error="$errlogfile" --pid-file="$mypidfile"
    --log=/var/log/mysql.log 
    --log-slow-queries
    --slow_query_log_file=/var/log/mysql-slow.log 
    --federated 
    --user=mysql >/dev/null 2>&1 &
```

#### 3

``` shell
sudo /etc/init.d/mysql restart
```

and your off logging as normal

note: the general log ( --log=/var/log/mysql.log ) will slow this down
