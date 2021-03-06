---
layout: post
title: "MongoDB php driver install for Ubuntu 9.10 UNR without pear/pecl "
published: true
tags: mongo php ubuntu
---
To manually install the MongDB PHP drivers without pear/pecl follow the below steps

install required php tools

``` shell
sudo apt-get install php5-dev
```

grab the driver

``` shell
wget http://github.com/mongodb/mongo-php-driver/zipball/1.0.6
```

unzip and install

``` shell
unzip mongodb-mongo-php-driver-a54a5f7.zip&nbsp;
cd mongodb-mongo-php-driver-a54a5f7/
phpize
./configure
sudo make install
```

the above step should place the mongo.so file in your php extensions directory,
but it didn't when i tried - to manually copy the driver follow the below steps

find the php extensions directory

``` shell
php -i | grep extension_dir
```

copy the driver to that directory

``` shell
sudo cp modules/mongo.so /usr/lib/php5/20060613+lfs/
```

now create the php mongo config file create/open the below file in vi

``` shell
sudo vi /etc/php5/conf.d/mongo.ini&nbsp;
```

and paste in the below configuration

``` ini
extension=mongo.so
[mongo]
; If the driver should reconnect to mongo
mongo.auto_reconnect = true
; Whether to allow persistent connections
mongo.allow_persistent = On
; Maximum number of persistent connections (-1 means unlimited)
mongo.max_persistent = -1
; Maximum number of links (persistent and non-persistent, -1 means unlimited)
mongo.max_connections = -1
; Default host for mongo connection
mongo.default_host = localhost
; Default port for mongo database
mongo.default_port = 42
; When saving files to the database, size of chunks to split them into
mongo.chunk_size = 1024
; Specify an alternate character to $ to use for special db functions ($set, $push, etc.)
mongo.cmd = "$"
```

save the above file and close, now check php and ensure that it has picked up the mongo driver and configuration

``` shell
php -re mongo
```

assuming the above is OK restart apache

``` shell
sudo /etc/init.d/apache2 restart
```

your now all done - enjoy mongodb and php

