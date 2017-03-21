---
layout: post
title: "Vim HTML to Markdown"
date: 2012-08-01 13:37
comments: true
tags: vi
---

If you need to remove HTML from documents (or convert basic HTML to Markdown) with Vim below are the main search and replace commands.  I've been using these to convert stuff from simple html to markdown.

[Pandoc](http://johnmacfarlane.net/pandoc/) is a great tool that can convert html to markdown - but I only want to convert sections in documents - so i've been using these Vim command to do the job - simple and works well
{% highlight bash %}
:%s/&nbsp; / /g
:%s/&nbsp;/ /g
:%s/<div>//g
:%s/<\/div>//g
:%s/^M//g
:%s/<p \/>/\r/g
:%s/<p >//g
:%s/<p>//g
:%s/<\/p >/\r/g
:%s/<\/p>/\r/g
:%s/&lt;/</g
:%s/&gt;/>/g
:%s/&amp;/\&/g
{% endhighlight %}

Let me know if you have more Vim commands to strip HTML or convert to Markdown

Note: For more info re the `^M` search and replace command refer [http://blog.justin.kelly.org.au/vim-remove-m/](http://blog.justin.kelly.org.au/vim-remove-m/)
