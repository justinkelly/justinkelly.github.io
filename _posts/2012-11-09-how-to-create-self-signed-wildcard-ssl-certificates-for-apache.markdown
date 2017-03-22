---
layout: post
title: "How to create self signed wildcard SSL certificates for Apache"
comments: true
tags: [ apache, ssl, https ]
---
### Create the wildcard SSL certification

Open up your terminal and execute the below commands, replacing `yourdomain.com` with the domain name

``` bash
    mkdir /etc/ssl/wildcard.yourdomain.com
    cd /etc/ssl/wildcard.yourdomain.com/
    openssl genrsa 2048 > host.key
    openssl req -new -x509 -nodes -sha1 -days 3650 -key host.key > host.cert
```

For a wildcard cert enter *.yourdomain.com for Common Name. It's the 6th option in the dialog.
All other options can be left blank for defaults

``` bash
    openssl x509 -noout -fingerprint -text < host.cert > host.info
    cat host.cert host.key > host.pem
    chmod 400 host.key host.pem
```

### Apache 

Enable SSL in Apache and restart

``` bash
    sudo a2enmod ssl
    sudo service apache2 restart
```

### Virtual hosts

Then add the SSL settings into each VirtualHost in your Apache configuration files

Note: that if you are planning to run your sub-domain or domains on http(80) aswell asn http(443) then you need to have 2 separate virtualhost entries. 1 for port `80` and 1 for port `443`

For the sub-domains you want to use with https add the below options with the 443 into your existing files

``` 
    <VirtualHost *:443>   

    SSLEngine On                                                                                                                                                                              
    SSLCertificateFile /etc/ssl/wildcard.yourdomain.com/host.pem                                                                                                                                     
    SSLCertificateKeyFile /etc/ssl/wildcard.yourdomain.com/host.key     
```

Then reload Apache 

``` bash
    sudo service apache2 reload
```

To test if its working open up `https://www.yourdomain.com` and check if the certificate works
