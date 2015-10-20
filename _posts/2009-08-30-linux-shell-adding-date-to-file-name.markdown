--- 
layout: post
title: "linux shell: adding date to file name"
published: true
date: 2009-08-30
tags: 
- bash
- linux
- shell
posterous_url: http://blog.justin.kelly.org.au/linux-shell-adding-date-to-file-name
posterous_slug: linux-shell-adding-date-to-file-name
---
simple way to add the date to the start of a file for archiving etc..

```
cp test.txt backup/`date +%Y%m%d`.test.txt
```
