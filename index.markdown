---
layout: page-no-title
title: Home
published: true
---

{% include author.html %}

## Links

<p class="socialimg-p">
  <a class="socialimg-icons icon-rounded no-margin" href="https://github.com/justinkelly" style="">
<i class="fa icon-github fa-lg"></i>
    </a>
    
      <a class="socialimg-icons icon-rounded no-margin" href="https://au.linkedin.com/in/justinkellyau" style="">
<i class="fa icon-linkedin fa-lg"></i>
    </a>
  
  <a class=" socialimg-icons icon-rounded no-margin" href="http://justin.kelly.org.au/+" style="">
<i class="fa icon-google-plus fa-lg"></i>
    </a>
    
<a class=" socialimg-icons icon-rounded no-margin" href="http://feeds.feedburner.com/justinkelly" style="">
	<i class="fa icon-rss fa-lg"></i>
	</a>

</p>

## Latest blog posts
<ul class="posts">

  {% for post in site.posts limit:15 %}  
    <li itemscope>
        <a href="{{ post.url }}">{{ post.title }}</a>
           <span class="entry-date">
              <time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">
                {{ post.date |  date_to_long_string  }}
              </time>
          </span>     
    </li>
  {% endfor %}
 <li class="mb2">		
  		<a href="/blog">More posts <i class="fa fa-long-arrow-right"></i></a>		
   </li>
</ul>
