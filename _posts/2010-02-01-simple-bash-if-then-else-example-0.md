--- 
layout: post
title: "simple bash if then else example "
published: true
date: 2010-02-01
tags: 
- bash
- linux
---
{% highlight bash %}
if [ -r somefile ]; then 
   content=$(cat somefile) 
elif [ -f somefile ]; then 
   echo "The file 'somefile' exists but is not readable to the script." 
else 
   echo "The file 'somefile' does not exist." 
fi 
{% endhighlight %}
