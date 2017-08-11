---
layout: page-no-title
title: About me
published: true
---
## Latest blog posts

<ul>
	{% for post in site.posts limit:5 %}
	<li>
		<a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
  	{% endfor %}  
  	<li>
  		<a href="/blog">More posts <i class="fa fa-long-arrow-right"></i></a>
	</li>
</ul>

<a name="contact"></a>

## Contact me

<form action="//formspree.io/justin@kelly.org.au" role="form" method="POST">
    <div class="form-group">
      <label for="name">What's your name?</label>
      <input type="text" name="name" class="form-control" required="">
    </div>

    <div class="form-group">
      <label for="_replyto">And email address, please?</label>
      <input type="email" name="_replyto" class="form-control" required="">
    </div>

    <div class="form-group">
      <label for="message">How can I help you?</label>
      <textarea name="body" class="form-control" rows="4" width="100%" required=""></textarea>
    </div>

    <div>
      <input type="hidden" name="_next" value="//blog.justin.kelly.org.au/thanks">
      <input type="hidden" name="_subject" value="Justin Kelly website - contact form" />
      <input type="submit" class="btn btn-lg" value="Send">
    </div>
  </form>
