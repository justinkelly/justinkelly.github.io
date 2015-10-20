---
layout: post
title: "How to check if a div exists with jQuery"
date: 2012-09-27 02:10
comments: true
tags: [ jQuery, javascript ]
---

The simple way to check if a div or element exists on the page using jQuery is to use the `length` function

_jQuery check div exists_
{% highlight javascript %}
if ($('ul.author').length)
{    
    //do xyz
}
{% endhighlight %}

Using plain Javascript you need check for the element using its ID

_Javascript check div exists_
{% highlight javascript %}

if(document.getElementById("element_id") !== null)
{
    //do xyz
}
{% endhighlight %}


