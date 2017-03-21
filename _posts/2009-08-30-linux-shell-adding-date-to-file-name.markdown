--- 
layout: post
title: "linux shell: adding date to file name"
published: true
date: 2009-08-30
tags: 
- bash
- linux
- shell
---
simple way to add the date to the start of a file for archiving etc..

```
cp test.txt backup/`date +%Y%m%d`.test.txt
```
