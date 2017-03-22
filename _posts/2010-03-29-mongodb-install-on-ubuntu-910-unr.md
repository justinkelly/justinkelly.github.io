--- 
layout: post
title: MongoDB install on Ubuntu 9.10 UNR
published: true
tags: 
- mongo
- ubuntu
---
tried to install MongoDB from the mongo apt repo but it failed, below are the steps to manually install mongo on ubuntu 9.10

get the files

    wget http://downloads.mongodb.org/linux/mongodb-linux-i686-1.4.0.tgz

extract

    tar xzf mongodb-linux-i686-1.4.0.tgz

create the required data directory

    sudo mkdir -p /data/db
    sudo chmod -Rv 777 /data/db

start the mongo server

    cd mongodb-linux-i686-1.4.0/
    ./bin/mongod

open the mongo shell

    ./bin/mongo

next post will detail how to install the php mongo driver manually - without pear/pecl
