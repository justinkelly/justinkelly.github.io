--- 
layout: post
title: "simple bash if then else example "
published: true
date: 2010-02-01
categories: 
- bash
- linux
posterous_url: http://blog.justin.kelly.org.au/simple-bash-if-then-else-example
posterous_slug: simple-bash-if-then-else-example-0
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