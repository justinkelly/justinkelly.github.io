---
layout: post
title: Make a link unclickable with jQuery
date: '2012-09-26 04:40'
comments: true
tags: 'jquery, javascript'
published: true
---

If you need to make a html link unclickable a quick solution is to use the below jQuery 

``` javascript
//make selected link unclickable
$('a.no_click').attr( 'onClick', 'return false' );
```

```
//make selected link unclickable
$('a.no_click').attr( 'onClick', 'return false' );
```

Might not be pretty but it works fine
