---
layout: post
title: "2 decimal places in Javascript/jQuery"
comments: true
tags: javascript jquery 
---

I always forget how to format a number as 2 decimal places in Javascript/jQuery, its extremely simple, just use the unmemorable `toFixed()` function - refer below is an example

``` javascript
    $("#total"+row_number).html($total,toFixed(2));
```
