--- 
layout: post
title: bash check if not null
published: true
date: 2010-02-01
categories: 
- bash
- linux
posterous_url: http://blog.justin.kelly.org.au/bash-check-if-not-null
posterous_slug: bash-check-if-not-null
---
{% highlight bash %} 
if [[ -n $message ]] 
then 
 echo $message 
fi 
{% endhighlight %}
