---
layout: post
title: How to check if null in bash
published: true
tags: bash linux
comments: true
---
Expanding on the previous [bash not null](http://blog.justin.kelly.org.au/bash-check-if-not-null) post
to check if a string is null

``` shell
String='' # Zero-length ("null") string variable. 

if [ -z "$String" ] 
then 
 echo "\$String is null." 
else 
 echo "\$String is NOT null." 
fi # $String is null. 
```
