---
layout: post
title: "Twitter sidebar for Octopress"
comments: true
tags: octopress twitter
---
Since Twitter has decommissioned the old Twitter API, the Twitter sidebar in [Octopress](http://octopress.org) based blogs has stopped working. 
A few [blogs](http://blog.jmac.org/blog/2013/03/30/putting-twitter-back-into-octopress/) have started to add the new Twitter widget to the sidebar but its quite garish.

My solution just copies the Google Plus sidebard and re-formats for Twitter - just refer the bottom right in the sidebar of this page to see it in action

### New sidebar file

Create a new file `source/_includes/custom/asides/twitter2.html` 

``` liquid
{% if site.twitter_user %}
  <section class="twitter2">
    <h1>
      <a href="https://twitter.com/{{ site.twitter_user }}">
        <img src="https://twitter.com/images/resources/twitter-bird-light-bgs.png" width="32" height="32">
          {{ site.twitter_user }}
      </a>
    </h1>
</section>
{% endif %}
```
### CSS

Update the `sass/partials/sidebar/_googleplus.scss` and add in 

``` css
.twitter2
{
  @extend .googleplus;
}
```

Note: I'm not using the `googleplus` class for the new twitter sidebar as it causes problem for my Octopress / Google Plus comments javascript

### Config

In `_config.yml` add the new sidebar file to the default_asides

``` yaml
default_asides: [custom/asides/twitter2.html, ...
```

Remove the original `asides/twitter.html` from the `default_asides:` line