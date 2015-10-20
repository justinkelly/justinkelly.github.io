--- 
layout: post
title: simple bash regex example
published: true
date: 2010-02-03
tags: 
- bash
- linux
posterous_url: http://blog.justin.kelly.org.au/simple-bash-regex-example
posterous_slug: simple-bash-regex-example
---
since versions 3 bash has included a simple regular expression operation `=~`

below is a simple example of it in action

{% highlight bash %}
######### example code #########
#search for a process and print specific section
ps=`ps aux | grep stuff | awk '{print $12 "_" $13}' `

#do some stuff
if [[ $ps =~ "something im looking for" ]]; then
    #do what you want
fi
##############################
{% endhighlight %}
