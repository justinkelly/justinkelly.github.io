--- 
layout: post
title: How to create a self signed ssl cert with no passphrase for your test server
published: true
date: 2010-01-31
tags: 
- apache
- linux
posterous_url: http://blog.justin.kelly.org.au/how-to-create-a-self-signed-ssl-cert-with-no
posterous_slug: how-to-create-a-self-sign-ssl-cert-with-no-pa
---

To create a simple self signed ssl cert follow the below steps

Generate your key with openssl
```
openssl genrsa -out server.key 1024
```
Output:
```
Generating RSA private key, 1024 bit long modulus
..........................++++++
..................................................................................++++++
e is 65537 (0x10001)
```
Use your kep to create your 'Certificate Signing Request' - and leave the passwords blank to create a testing 'no password' certificate

```
openssl req -new -key server.key -out server.csr
```
Output:
    
```
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

```
openssl x509 -req -days 366 -in server.csr -signkey server.key -out server.crt
```

```
Signature ok
subject=/C=AU/ST=Some-State/O=Internet Widgits Pty Ltd 
Getting Private key 
```
Check the resultant files

```
ls
```
Output:
```
server.crt 
server.csr 
server.key 
server.pem
```

Now add the below lines into your apache conf and ensure ssl is enabled
```
SSLCertificateFile /path/to/ssl/server.crt 
SSLCertificateKeyFile /path/to/ssl/server.key 
```

