---
layout: post
title: "Get the current year in Javascript"
date: 2012-09-27 02:53
comments: true
categories: [ javascript , jQuery ]
---
Was trying to figure out how to get the current year value ie. {{ site.time | date: "%Y" }} using Javascript.  Below is the quickest way I could find to get it

{% highlight javascript %}
$end_value = (new Date()).getFullYear() ;
{% endhighlight %}
