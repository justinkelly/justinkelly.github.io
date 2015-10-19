--- 
layout: post
title: "How to: copy file and append current date in linux/bash"
published: true
date: 2010-06-23
categories: 
- bash
- link
posterous_url: http://blog.justin.kelly.org.au/how-to-copy-file-and-append-current-date-in-l
posterous_slug: how-to-copy-file-and-append-current-date-in-l
---

{% highlight bash %}
$ ls
somefile_file.jsp
$ cp somefile_file.jsp{,.`date +%Y%m%d`}      
$ ls
somefile_file.jsp somefile_file.jsp.20100624
{% endhighlight %}
