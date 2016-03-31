---
published: false
---

--- 
layout: post
title: Sub-domain setup for Redmine & mod_passenger
published: true
date: 2010-08-02
tags: 
- apache
- rails
- redmine
posterous_url: http://blog.justin.kelly.org.au/sub-domain-setup-for-redmine-modpassenger
posterous_slug: sub-domain-setup-for-redmine-modpassenger
---

As someone who doesn't use rail/mod_passenger much, I had issues 
getting [redmine](http://redmine.org) setup with mod_passenger as a sub-domain. ie. `http://redmine.yourdomain.com`
 
Finally got it going - here is my working config

Important things are:

* Make sure DocumentRoot points to the public folder in redmine
* Set RailsBaseURI to `/`

refer example vhost file below

`example_vhost.conf`
{% highlight conf linenos %}
<VirtualHost *:80>
 
  # Admin email, Server Name (domain name) and any aliases
  ServerAdmin webmaster@domain1.com
  ServerName  redmine.yourdomain.com
 
  DocumentRoot /usr/share/redmine/public
 
  # Custom log file locations
  LogLevel warn
  ErrorLog  /home/you/public_html/yourdomain.com/log/error.log
  CustomLog /home/you/public_html/yourdomain.com/log/access.log combined
 
  RailsEnv production
  RailsBaseURI /
  PassengerDefaultUser www-data
 
  <Directory  /usr/share/redmine/public>
    Options FollowSymLinks
    AllowOverride None
    Order deny,allow
    Allow from all
  </Directory>
 
</VirtualHost>
{% endhighlight %}
