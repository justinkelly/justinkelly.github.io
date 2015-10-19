--- 
layout: post
title: "bash: how to send emails in a script "
published: true
date: 2010-02-01
categories: 
- bash
- linux
posterous_url: http://blog.justin.kelly.org.au/bash-how-to-send-emails-in-a-script
posterous_slug: bash-how-to-send-emails-in-a-script
---
simple example to send an email if $message is not null

{% highlight bash %}
SUBJECT="Automated Security Alert" 
TO="alarms@someaddress.com" 
 
$message '' # if error or alert then create a message 
 
if [[ -n $message ]] 
then 
 echo $message 
 /bin/mail -s "$SUBJECT" "$TO"
{% endhighlight %}
