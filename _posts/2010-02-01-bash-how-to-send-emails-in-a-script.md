---
layout: post
title: "bash: how to send emails in a script "
published: true
tags: 
- bash
- linux
---
simple example to send an email if $message is not null

``` shell
SUBJECT="Automated Security Alert" 
TO="alarms@someaddress.com" 
 
$message '' # if error or alert then create a message 
 
if [[ -n $message ]] 
then 
 echo $message 
 /bin/mail -s "$SUBJECT" "$TO"
```