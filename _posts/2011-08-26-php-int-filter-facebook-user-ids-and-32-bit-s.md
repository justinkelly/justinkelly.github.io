--- 
layout: post
title: PHP int filter, Facebook user IDs, and 32 bit servers dont mix
published: true
date: 2011-08-26
tags: php
---
Just working on a facebook app and wondering why is it always inserting the Facebook user ID as 2147483647 
when the ID is something else. 

I've been using the `(int)` filter as detailed in th the zend framework docs and examples, 
but as Facebook user IDs are larger than the largest integer a 32 bit server can handle so `(int)`
doesn't work.  

Simple solution if your such on a 32 bit server is just to use `is_numeric` - refer code example below

``` php
<?php

$id = is_numeric($id) ? $id : ''; // makes Facebook IDs work on 32bit</em>

?>
```
