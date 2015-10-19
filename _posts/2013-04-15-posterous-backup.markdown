---
layout: post
title: "Posterous Backup"
date: 2013-04-15 02:36
comments: true
categories: posterous
---

Posterous.com is due to shutdown at the end of April 2013.  If your after a simple way to backup a Posterous site the below command will download your
Posterous site as static html 

    wget -r -l inf -k -E -p -nc http://yourblog.posterous.com/

The options used are:

 * `-r` recursive
 * `-l` inf infinite depth
 * `-k` suffix html files with .html
 * `-E` update the saved files with links to local files
 * `-p` download page resources
 * `-nc` don't redownload urls more than once

This command won't download all images (ones hostes on a different CDN) but it will download the majority of your site fine
