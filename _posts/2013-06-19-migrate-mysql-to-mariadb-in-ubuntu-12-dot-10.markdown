---
layout: post
title: "Migrate MySQL to MariaDB in Ubuntu 12.10"
date: 2013-06-19 04:21
comments: true
categories: [linux, ubuntu, mysql , mariadb]
---
If you have MySQL installed on an Ubuntu (12.10) server and are looking to migrate to MariaDB
, here are the steps to migrate over to MariaDB 10.

MariaDB is a drop-in replacement for MySQL - you don't need to export then import your databases - it just works

## Remove MySQL

    sudo apt-get install software-properties-common                                                                                                                                        
    sudo apt-get remove mysql-server                                                                                                                                                       
    sudo apt-get remove mysql-server-5.5                                                                                                                                                   
    sudo apt-get remove mysql-server-core-5.5                                                                                                                                              

## Add MariaDB repository

    sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db                                                                                                       
    sudo add-apt-repository 'deb http://mirror.aarnet.edu.au/pub/MariaDB/repo/10.0/ubuntu quantal main'                                                                                    
    sudo apt-get update                                                                                                                                                                    
    sudo apt-get install mariadb-server                                                                                                                                                    

##Check that its worked

    mysql --version           

If the migration was a success it'll says the distribution of mysql is MariaDB - similar to below                                                                                                                                                   

    mysql  Ver 15.1 Distrib 10.0.3-MariaDB, for debian-linux-gnu (i686) using readline 5.1      