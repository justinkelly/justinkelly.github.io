---
layout: post
title: "Migrate MySQL to MariaDB in Ubuntu 12.10"
comments: true
tags: linux ubuntu mysql mariadb
---

If you have MySQL installed on an Ubuntu (12.10) server and are looking to migrate to MariaDB
, here are the steps to migrate over to MariaDB 10.

MariaDB is a drop-in replacement for MySQL - you don't need to export then import your databases - it just works

## Remove MySQL

``` shell
sudo apt-get install software-properties-common
sudo apt-get remove mysql-server
sudo apt-get remove mysql-server-5.5
sudo apt-get remove mysql-server-core-5.5
```

## Add MariaDB repository

``` shell
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.aarnet.edu.au/pub/MariaDB/repo/10.0/ubuntu quantal main'
sudo apt-get update
sudo apt-get install mariadb-server
```

## Check that its worked

``` shell
mysql --version
```

If the migration was a success it'll says the distribution of mysql is MariaDB - similar to below

``` shell
mysql  Ver 15.1 Distrib 10.0.3-MariaDB, for debian-linux-gnu (i686) using readline 5.1
```
