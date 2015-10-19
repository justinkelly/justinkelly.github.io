---
layout: post
title: "Make a link unclickable with jQuery"
date: 2012-09-26 04:40
comments: true
categories: [ jquery , javascript ]
---

If you need to make a html link unclickable a quick solution is to use the below jQuery 

{% highlight javascript %}
//make selected link unclickable
$('a.no_click').attr( 'onClick', 'return false' );
{% endhighlight %}

Might not be pretty but it works fine
