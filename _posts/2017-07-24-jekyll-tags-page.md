---
layout: post
published: true
title: How to create a tags and archive page in Jekyll
comments: true
tags: jekyll 
---
One feature that I've found hard to implement in the [Jekyll](https://jekyllrb.com/) static website generator is a tags and archive page.
After much testing I've finally got a solution working as required. 

## Features and screenshots

List of tags with a count of posts

{% image_tag src="/img/2017-07-jekyll-tags.png" width="600" %}

List of posts in each tag ordered by date newest

{% image_tag src="/img/2017-07-jekyll-archive.png" width="600" %}

In the footer of the post to list the tags and linking to the correct section of the new tags page

{% image_tag src="/img/2017-07-jekyll-tag-list.png" width="250" %}

## Instructions

In your post ensure your are using the `tags` feature 

``` yaml
---
layout: post
published: true
title: Importing CSV files into MySQL from the Linux command line
comments: true
tags: mysql linux
---
```

Create a folder `tags` and add a file `index.md` in it with the following contents

<!--more-->

_tags/index.md_

``` html
{% raw  %}
---
layout: page
title: Tags
---

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
<!-- site_tags: {{ site_tags }} -->
{% assign tag_words = site_tags | split:',' | sort %}
<!-- tag_words: {{ tag_words }} -->

<div id="tags">
  <ul class="tag-box inline">
  {% for tag in tag_words %}
    <li><a href="#{{ tag | slugify }}-ref">{{ tag | replace: '-', ' ' }} <span>{{ site.tags[tag] | size }}</span></a></li>
  {% endfor %}
  </ul>

  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
  <h2 id="{{ this_word | slugify }}-ref">{{ this_word | replace: '-', ' ' }}</h2>
  <ul class="posts">
    {% for post in site.tags[this_word] %}{% if post.title != null %}
    <li itemscope>
        <a href="{{ post.url }}">{{ post.title }}</a>
           <span class="entry-date">
              <time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">
                {{ post.date | date: "%B %d, %Y" }}
              </time>
          </span> 
       </li>
    {% endif %}{% endfor %}
  </ul>
  {% endunless %}{% endfor %}
</div>
{% endraw  %}
```

If you `post` layout files put the below code in the footer section

_layouts/post.html_

``` html
{% raw  %}
<div class="related">
  {% if page.tags != null %}
  <div class="tags">
    <h4>
      {% for tag in page.tags %}
	      <a href="/tags#{{ tag | slugify }}-ref">
          <i class="fa fa-tags"></i>
	          {{ tag | replace: '-', ' ' }}
	      </a> 
      {% endfor %}
    </h4>
  </div>
</div>
  {% endif %}
{% endraw  %}
```

Add the CSS for the tags

_CSS_

``` css
/*tags page*/

ul.posts {
    list-style-type: none;
    margin-bottom: 2rem;
    padding: 0;
}

ul.posts li span {
    color: silver;
}

.tag-box {
    list-style: none;
    margin: 0;
    padding: 4px 0;
    overflow: hidden;
}

.tag-box.inline li {
    float: left;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 2.5;
}

.tag-box a {
    padding: 4px 6px;
    margin: 2px;
    background-color: #e6e6e6;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    text-decoration: none;
}

.tag-box a span {
    vertical-align: super;
    font-size: 10px;
    font-size: 0.625rem;
}
```

You can test this feature in the tags/archive page on this blog

* [https://blog.justin.kelly.org.au/tags](https://blog.justin.kelly.org.au/tags)
