---
layout: post
published: true
title: How to find and delete empty folders in Linux
comments: true
tags: linux ubuntu bash
---
Using the `find` command in Linux you can add options to find empty folders and also to delete them if required

Find:

``` bash
find . -empty -type d 
```

Delete:

``` bash
find . -empty -type d -delete
```
