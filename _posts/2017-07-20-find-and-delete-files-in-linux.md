---
layout: post
published: true
title: How to find and delete files in Linux
comments: true
tags: linux ubuntu bash
---
Using the `find` command in Linux you can search for file names matching a specific pattern and optional delete them.

Find all files ending in `pdf.1` at and below the current directory

``` bash
find . -name "*.pdf.1" -type f
```

Delete all files ending in `pdf.1` at and below the current directory

``` bash
find . -name "*.pdf.1" -type f -delete
```
