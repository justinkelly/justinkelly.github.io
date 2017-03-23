---
layout: post
title: 'How to send emails in a bash script '
published: true
tags: bash linux
comments: true
---
Simple example to send an email if $message is not null

``` shell
SUBJECT="Automated Security Alert" 
TO="alarms@someaddress.com" 
 
$message '' # if error or alert then create a message 
 
if [[ -n $message ]] 
then 
 echo $message 
 /bin/mail -s "$SUBJECT" "$TO"
```
