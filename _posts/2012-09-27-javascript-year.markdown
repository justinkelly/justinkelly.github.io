---
layout: post
title: Get the current year in Javascript
comments: true
tags: javascript jquery
published: true
---
Was trying to figure out how to get the current year value ie. {{ site.time | date: "%Y" }} using Javascript.  Below is the quickest way I could find to get it

``` javascript
$end_value = (new Date()).getFullYear() ;
```
