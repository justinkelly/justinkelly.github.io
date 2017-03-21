--- 
layout: post
title: bash check if null
published: true
date: 2010-02-01
tags: 
- bash
- linux
---
expanding on the previous [bash not null](http://blog.justin.kelly.org.au/bash-check-if-not-null)  post
to check if a string is null

{% highlight bash %}
String='' # Zero-length ("null") string variable. 

if [ -z "$String" ] 
then 
 echo "\$String is null." 
else 
 echo "\$String is NOT null." 
fi # $String is null. 
{% endhighlight %}
