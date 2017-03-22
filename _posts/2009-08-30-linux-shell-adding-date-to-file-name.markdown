---
layout: post
title: "linux shell: adding date to file name"
published: true
tags: bash linux shell
---
simple way to add the date to the start of a file for archiving etc..

``` shell
cp test.txt backup/`date +%Y%m%d`.test.txt
```
