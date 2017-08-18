---
layout: page-no-title
title: Home
published: true
---

<div class='home-card'>
  
    <div class="home-card-image">
      <img src="/img/{{ site.owner.avatar }}" alt="Justin Kelly" />
    </div>
    
   <div class="home-card-body">
      <p class="">
       Web Developer, Business Analytics, Data Engineer spcialising in PHP, REactJS Tableau, AWS REdSHift amd Matillion ETL
       <br /> <br />
       Based in Melbourne, Australia
      </p>
      <p class="socialimg-p">
      Feel free to contact me on email
        <a class="" href="mailto:justin@kelly.org.au" style="">
	          <i class="fa icon-envelope-o fa-lg"></i><span>justin@kelly.org.au</span>
        </a> or Twitter 
        <a class="" href="https://twitter.com/_justin_kelly" style="">
          <i class="fa icon-twit fa-lg"></i><span>_justin_kelly</span>
        </a>
    </p>
    </div>

    
</div>


## Latest blog posts
<ul class="posts">

  {% for post in site.posts limit:10 %}  
    <li itemscope>
        <a href="{{ post.url }}">{{ post.title }}</a>
           <span class="entry-date">
              <time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date |  date_to_string  }}</time>
          </span>     
    </li>
  {% endfor %}
 <li class="mb2">		
  		<a href="/blog">More posts <i class="fa icon-long-arrow-right"></i></a>		
   </li>
</ul>

<p class="socialimg-p">
  <a class="socialimg-icons icon-rounded no-margin" href="https://github.com/justinkelly" style="">
<i class="fa icon-github fa-lg"></i>
    </a>
    
      <a class="socialimg-icons icon-rounded no-margin" href="https://au.linkedin.com/in/justinkellyau" style="">
<i class="fa icon-link-in fa-lg"></i>
    </a>
  
  <a class=" socialimg-icons icon-rounded no-margin" href="http://justin.kelly.org.au/+" style="">
<i class="fa icon-g-plus fa-lg"></i>
    </a>
    
<a class=" socialimg-icons icon-rounded no-margin" href="http://feeds.feedburner.com/justinkelly" style="">
	<i class="fa icon-rss fa-lg"></i>
	</a>

</p>
