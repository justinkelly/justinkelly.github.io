---
layout: post
title: "Octopress theme"
date: 2012-08-16 01:57
comments: true
tags: octopress
---

![](/img/octopress-theme.png )

It's been a while since I moved this blog from Posterous to Octopress, but I've finally gotten round
to removing the default theme and apply the theme I did for [bzr.bz/docs](http://bzr.bz/docs), screenshot and full code for the theme is below:

### Code changes

Edit `sass/custom/_colors.scss` 

``` scss
$page-bg :#f7f7f7;
$main-bg :#fff;
$nav-color :#fff;
$nav-color-hover: #fff;
$visited: #fff;
```

Edit `sass/custom/_style.scss`

``` scss
// This File is imported last, and will override other styles in the cascade
// Add styles here to make changes without digging in too much
 
$border-ep: #E0E0E0;
html {
     background: url("http://i.minus.com/ibuElAZkI9CQ3Y.gif") repeat-x scroll center top $page-bg;
  }
 
  #main
  {
  border-left: 1px solid $border-ep;
  border-right: 1px solid $border-ep;
  border-bottom: 1px solid $border-ep;
  }
 
 
  body > footer
  {
    background: $page-bg;
  }
 
  body > nav {
    border-top:0px solid #fff;
    border-bottom:0px solid #fff;
    padding-top:4px;
    padding-bottom:3px;
    background: transparent;
 
    ul {
        padding-top:0px;
    }
 
    a {
      @include link-colors($nav-color, $nav-color-hover, $visited: $nav-color);
      text-shadow: 2px 2px 2px  #0F3B6A;
      color:#fff;
      float: left;
      text-decoration: none;
      font-size: 1.1em;
      padding: .1em 0;
      line-height: 1.5em;
    }
 
    li + li {
      border-left: 0px solid $nav-border-left;
      margin-left: .8em;
      a {
        padding-left: .8em;
        border-left: 0px solid $nav-border-right;
      }
    }
    form{
        .search {
          @include box-shadow(0px);
        }
    }
 
  }
 
  .blue_dark {
      color: #5AA6F1;
      text-shadow: 2px 2px 2px  #0F3B6A;
      font-size:20px;
  }
  .blue_light {
      text-shadow: 2px 2px 2px  #0F3B6A;
      color: #A6CCFB;
      font-size:20px;
  }
 
  .gist-highlight {
      margin-bottom:0;
  }
 
  body {
     > div {
       border-bottom: 0px solid $page-border-bottom;
   }
 
 
}
```

Edit `source/_includes/custom/navigation.html`

``` html
{% raw %}<ul class="main-navigation">
    <li><a href="{{ root_url }}/">
        <span class="blue_light">
            {{ site.title }}
        </span>
       {% if site.subtitle %}
           <h2></h2>
           <span class="blue_dark">
             {{ site.subtitle }}
           </span>
       {% endif %}
    </a></li>
  <li><a href="{{ root_url }}/">Blog</a></li>
  <li><a href="{{ root_url }}/blog/archives">Archives</a></li>
  <li><a href="{{ root_url }}/about">About me</a></li>
</ul>{% endraw %}
```

remove the line

``` html
<header role="banner">{% include header.html %}</header>
```

from the `source/_layouts/default.html` file

### Background image

The image I use the the backgrouns is available at: [http://i.minus.com/ibuElAZkI9CQ3Y.gif](http://i.minus.com/ibuElAZkI9CQ3Y.gif)
either link to it in the `sass/custom/_style.scss` file as detailed or download it into yout octopress images directory for local referencing

Just run `rake generate` and you site will now have the same theme as this blog
