---
layout: post
published: true
comments: true
title: How to create a self signed ssl cert with no passphrase for your test server
tags: apache linux
---

To create a simple self signed ssl cert follow the below steps

Generate your key with openssl

``` shell
openssl genrsa -out server.key 1024
```
Output:

``` shell
Generating RSA private key, 1024 bit long modulus
..........................++++++
..................................................................................++++++
e is 65537 (0x10001)
```

Use your kep to create your 'Certificate Signing Request' - and leave the passwords blank to create a testing 'no password' certificate

``` shell
openssl req -new -key server.key -out server.csr
```
Output:
    
``` shell
You are about to be asked to enter information that will be incorporated into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:
State or Province Name (full name) [Some-State]:
Locality Name (eg, city) []: 
Organization Name (eg, company) [Internet Widgits Pty Ltd]: 
Organizational Unit Name (eg, section) []: 
Common Name (eg, YOUR name) []: 
Email Address []: 
Please enter the following 'extra' attributes to be sent with your certificate request
A challenge password []:
An optional company name []:
```

Now create your ssl certicates for apache

``` shell
openssl x509 -req -days 366 -in server.csr -signkey server.key -out server.crt
```

``` shell
Signature ok
subject=/C=AU/ST=Some-State/O=Internet Widgits Pty Ltd 
Getting Private key 
```
Check the resultant files

``` shell
ls
```

Output:

``` shell
server.crt 
server.csr 
server.key 
server.pem
```

Now add the below lines into your apache conf and ensure ssl is enabled

``` shell
SSLCertificateFile /path/to/ssl/server.crt 
SSLCertificateKeyFile /path/to/ssl/server.key 
```
