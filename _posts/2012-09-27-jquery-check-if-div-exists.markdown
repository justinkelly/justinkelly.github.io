---
layout: post
title: How to check if a div exists with jQuery
comments: true
tags: jquery javascript
published: true
---

The simple way to check if a div or element exists on the page using jQuery is to use the `length` function

_jQuery check div exists_
``` javascript
if ($('ul.author').length)
{    
    //do xyz
}
```

Using plain Javascript you need check for the element using its ID

_Javascript check div exists_
``` javascript
if(document.getElementById("element_id") !== null)
{
    //do xyz
}
```
