---
layout: post
title: Nginx domain setup script
date: "2013-09-06 02:12"
comments: true
tags: "nginx,linux,ubuntu"
published: true
---

![](https://googledrive.com/host/0B3qPjbk9su5uT0pQdVhVYXVUbEk/Blog/nginx_200.png )

After writing a number of scripts to auto create domains for Apache and Nginx on linux servers I've finally gotten round to cleaning it up and releasing by current script to handle
auto creating domains for Nginx (my current preferred web server)

This creates the Nginx virtual host config file, sets up a sane folder structure for the domain, enables the domain in Nginx and reloads Nginx.

Hope this help other Nginx users to manage domains easier - let me know if you have any additions to the script

Note: script assumes using PHP via fastcgi and unix sockets

_Nginx auto domain setup script nginx_domain.sh_
```bash
#!/bin/bash

# Info
# ---
# script can run with the domain as a command line input 
# `sudo ./nginx_domain.sh my_domain.com` or without and
# the script will prompt the user for input

#config
web_root='/usr/share/nginx/'
config_dir='/etc/nginx/'

if [ -z "$1" ]
then   

        #user input
        echo -e "Enter domain name:"
        read DOMAIN
        echo "Creating Nginx domain settings for: $DOMAIN"

        if [ -z "$DOMAIN" ]
        then   
                echo "Domain required"
                exit 1
        fi
fi

if [ -z "$DOMAIN" ]
then
        DOMAIN=$1
fi

(
cat <<EOF
server {
        listen   80; ## listen for ipv4; this line is default and implied
        #listen   [::]:80 default_server ipv6only=on; ## listen for ipv6

        root $web_root/$DOMAIN/public;
        index index.php  index.html index.htm;

        # Make site accessible from http://localhost/
        server_name $DOMAIN www.$DOMAIN;

        location / {try_files $uri $uri/ @forum;}

        location ~ \.php$ {
                try_files $uri =404;

                fastcgi_split_path_info ^(.+\.php)(/.+)$;
                #NOTE: You should have "cgi.fix_pathinfo = 0;" in php.ini

                fastcgi_pass unix:/var/run/php5-fpm.sock;
                fastcgi_index index.php;
                include fastcgi_params;
        }
        location ~ /\.ht {
                deny all;
        }
            access_log $web_root/$DOMAIN/log/access_log.txt;
            error_log $web_root/$DOMAIN/log/error_log.txt error;
}
EOF
) >  $config_dir/sites-available/$DOMAIN.conf

echo "Making web directories"
mkdir -p $web_root/"$DOMAIN"
mkdir -p $web_root/"$DOMAIN"/{public,private,log,backup} 
ln -s $config_dir/sites-available/"$DOMAIN".conf $config_dir/sites-enabled/"$DOMAIN".conf
/etc/init.d/nginx reload
echo "Nginx - reload"
chown -R www-data:www-data $web_root/"$DOMAIN"
chmod 755 $web_root/"$DOMAIN"/public
echo "Permissions have been set"
echo "$DOMAIN has been setup"
```
