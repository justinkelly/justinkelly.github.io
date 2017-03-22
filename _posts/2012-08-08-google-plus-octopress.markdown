---
layout: post
title: "Google Plus comments link for Octopress"
tags: octopress google-plus
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

_after_footer.html_ 

``` javascript
{% comment %}
  Add content to be output at the bottom of each page. (You might use this for analytics scripts, for example)
{% endcomment %}
{% if page.comments == true %}
<script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function() {
    //$post_title = $('header .entry-title').text();
    //$post_domain = document.domain;
    if( jQuery('article').hasClass('hentry') )
    {
        $post_link = encodeURI(jQuery(location).attr('href'));
        $gp_url = jQuery('.googleplus h1 a').attr('href');
        $google_plus_id = $gp_url.split('/')[3].split('?')[0] ;
        $google_query_url = "https://www.googleapis.com/plus/v1/activities?query=" +
                            $post_link +
                            "&maxResults=20&orderBy=best&fields=id%2Citems(actor(displayName%2Cid%2Curl)" +
                            "%2Cid%2Cobject(attachments(id%2Curl)%2Curl))%2Ctitle&key={YOUR_GOOGLE_API_KEY}";
        jQuery.getJSON($google_query_url,
            function(data) {
                jQuery.each(data.items, function(i,item){
                    if(item.actor.id == $google_plus_id)
                    {
                        jQuery('.entry-content').append( "<h3>Comments?</h3><p>Join the discussion at the <a href='" + item.object.url +"'>Google+ post</a></p>");
                        return false;
                    }
                });
            });
    };
});
</script>
{% endif %}
```

Note: you need to replace the `{YOUR_GOOGLE_API_KEY}` section with your google api key

Next, modify `source/_includes/custom/head.html` to include `<script>` tags for jQuery

``` html
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">jQuery.noConflict();</script>
```

### What

Now after you do a new blog post using Octopress, just +1 the post.  The script will look for the +1 done by the blog owner
and if it finds one it'll link to it


### See it in action

Open this blog [post](http://blog.justin.kelly.org.au/google-plus-octopress/) and 
just look at the bottom of the page, you'll see a `Comments? refer the Google+ post` link

### Notes

* You need a Google API key to use this
* Comments have to be enabled for the blog post
* The link only appears when the blog post is open - not in the index/front-page view
* This assumes your using the default Octopress theme - if you using something different you'll have to customise the script
