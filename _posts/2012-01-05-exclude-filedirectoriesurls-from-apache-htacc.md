--- 
layout: post
title: "Exclude file/directories/urls from Apache .htaccess password protection :: How to"
published: true
date: 2012-01-05
tags: 
- apache
---

I've an Apache .htaccess password protected site I'm working on but need certain
pages to be accessible without a password

Took awhile but finally got it figured out - refer my .htaccess file below for the details

```
AuthType Basic
AuthName "Auth Required"
AuthUserFile /path/to/.htpasswd
Require valid-user
# allow public access to the following resources
SetEnvIf Request_URI "(path/to/directory/)$" allow
SetEnvIf Request_URI "(path/to/file\.phpt)$"  allow
SetEnvIf Request_URI "(util)$"  allow
Order allow,deny
Allow from env=allow
# allow open access to entire site for select ips and sites
Allow from 777.777.77.7
Allow from 888.888.88.8
Satisfy any
```
    
{% gist 1565033 %}
