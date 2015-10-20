---
layout: post
title: "Google Plus comments link for Octopress"
date: 2012-08-08 04:30
comments: true
tags: 
---
Need Octopress blog posts to auto link to your Google Plus post for comments?

I did, heres how to make Octopress add a comments link to the bottom of each blog post

### Why

1. I wanted blog visitors to be able to comment and discuss the post without all the comments appearing at the bottom of the post
1. I didn't want to have to manually add a link to the Google+ post
1. I didn't want to use a comment system like Disqus 
1. Google Plus is best place these type of comments/post discussions, it sorts our all the spam and you only get good comments as real names are used 

### How to

Enable Google Plus for Octopress, then add this into `source/_includes/custom/after_footer.html`

{% gist justinkelly/b2eaf44f67225eb1cebd %}

Note: you need to replace the `{YOUR_GOOGLE_API_KEY}` section with your google api key

Next, modify `source/_includes/custom/head.html` to include `<script>` tags for jQuery

{% highlight html %}
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">jQuery.noConflict();</script>
{% endhighlight %}

### What

Now after you do a new blog post using Octopress, just +1 the post.  The script will look for the +1 done by the blog owner
and if it finds one it'll link to it


### See it in action

Open this blog [post](http://blog.justin.kelly.org.au/google-plus-octopress/) and 
just look at the bottom of the page, you'll see a `Comments? refer the Google+ post` link

### Notes
1. You need a Google API key to use this
1. Comments have to be enabled for the blog post
1. The link only appears when the blog post is open - not in the index/front-page view
1. This assumes your using the default Octopress theme - if you using something different you'll have to customise the script
