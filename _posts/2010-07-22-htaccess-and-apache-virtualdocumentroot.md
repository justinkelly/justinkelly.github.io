--- 
layout: post
title: .htaccess and Apache VirtualDocumentRoot
published: true
date: 2010-07-22
categories: 
- apache
- linux
posterous_url: http://blog.justin.kelly.org.au/htaccess-and-apache-virtualdocumentroot
posterous_slug: htaccess-and-apache-virtualdocumentroot
---

If you using VirtualDocumentRoot in your Apache set you need to make a minor change to your .htaccess rewrites to make them work 

* just add a slash before the url and it'll work,  refer below

from: 

```
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^/?([a-zA-Z0-9_]+)-([a-zA-Z0-9_]+)$ index.php?module=$1&view=$2 [L]</span>
```
to: 

```
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^/?([a-zA-Z0-9_]+)-([a-zA-Z0-9_]+)$ /index.php?module=$1&view=$2 [L]</span>
```
