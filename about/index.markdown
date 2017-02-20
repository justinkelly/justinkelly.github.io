---
layout: page-no-title
title: "About me"
---
{% include author.html %} 

If you have an idea for a project, I'd love to talk to you about it.

## Latest blog posts

<ul>
	{% for post in site.posts limit:5 %}
	<li>
		<a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
  	{% endfor %}  
  	<li>
  		<a href="https://blog.justin.kelly.org.au">More posts <i class="fa fa-long-arrow-right"></i></a>
	</li>
</ul>

## Contact details

<p class="social-p">
  <a id="contact_details"></a>
  <a class="social-icons icon-rounded no-margin " href="mailto:justin@kelly.org.au" style="">
	<i class="fa fa-envelope-o fa-lg"></i><span>justin@kelly.org.au</span>
    </a>
</p>
<p class="social-p">
  <a class="social-icons icon-rounded no-margin " href="https://twitter.com/_justin_kelly" style="">
<i class="fa fa-twitter fa-lg"></i><span>_justin_kelly</span>
    </a>
</p>
<p class="social-p">
  <a class=" social-icons icon-rounded no-margin" href="http://justin.kelly.org.au/+" style="">
<i class="fa fa-google-plus fa-lg"></i><span>justin.kelly.org.au/+</span>
    </a>
</p>

<p class="social-p">
  <a class="social-icons icon-rounded no-margin" href="https://au.linkedin.com/in/justinkellyau" style="">
<i class="fa fa-linkedin fa-lg"></i><span>justinkellyau</span>
    </a>
</p>

<p class="social-p">
	<a class=" social-icons icon-rounded no-margin" href="https://skype.com" style="">
		<i class="fa fa-skype fa-lg"></i><span>justin.kelly.org.au</span>
  	</a>
</p>
<p class="social-p">
  <a class=" social-icons icon-rounded no-margin " alt="ORCID" href="http://orcid.org/0000-0003-2567-6704" style="">
<i class="fa fa-openid fa-lg"></i><span>ORCID: 0000-0003-2567-6704</span>
    </a>
 </p>
<p class="social-p">


  <a class="social-icons icon-rounded no-margin" href="https://github.com/justinkelly" style="">
<i class="fa fa-github fa-lg"></i><span>justinkelly</span>
    </a>


  <a class="social-icons icon-rounded no-margin" href="https://bitbucket.org/justin.kelly.org.au" style="">
	<i class="fa fa-bitbucket fa-lg"></i>
  </a>

  <a class=" social-icons icon-rounded no-margin" href="https://facebook.com/justin.kelly.org.au" style="">
	<i class="fa fa-facebook fa-lg"></i>
  </a>

<a class=" social-icons icon-rounded no-margin" href="http://feeds.feedburner.com/justinkelly" style="">
	<i class="fa fa-rss"></i>
	</a>

</p>

<br />
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

<br />

## Work

### Freelance web development

Custom web development all kinds of projects:

* Custom Simple Invoices development
* Business and personal sites
* Maintaining existing web apps/sites

### Swinburne University

Library technology focused development for all things search, library/business analytics, Ex Libris and academic libraries

### SimpleInvoices.org

Open source web-based invoice app started by me in 2005 and still going strong

### SmarterInvoices.com

Started by me at the start of 2010. SmarterInvoices.com provides Simple Invoices hosting

### Invoice.im

New 'work-in-progress' web based invoicing app 
