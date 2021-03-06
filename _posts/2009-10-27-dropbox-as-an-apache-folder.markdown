---
layout: post
title: dropbox as an apache folder
published: true
tags: apache dropbox linux
---
Create an apache config file for dropbox 

``` shell
sudo vi /etc/http/conf.d/dropbox.conf
```

paste in the below code - replacing 'username' with your user 

``` apache
Alias /dropbox /home/username/Dropbox/htdocs 
<Directory /home/username/Dropbox/htdocs/>
   order allow,deny
   allow from all
   #Deny from all
   allow from 127.0.0.1
</Directory>
```

Create a htdocs folder in your dropbox directory

``` shell
mkdir /home/username/Dropbox/htdocs 
```

Allow Apache access to your home dir

``` shell
chmod 755 /home/username 
chmod 755 /home/username/Dropbox 
chmod 755 /home/username/Dropbox/htdocs 
```

Reload the Apache conf

``` shell
sudo /etc/init.d/httpd reload
```

Done, now [http://localhost/dropbox](http://localhost/dropbox) is stored in dropbox
