---
layout: post
title: Make a link unclickable with jQuery
comments: true
tags: jquery javascript
published: true
---

If you need to make a html link unclickable a quick solution is to use the below jQuery 

``` javascript
//make selected link unclickable
$('a.no_click').attr( 'onClick', 'return false' );
```

Might not be pretty but it works fine
