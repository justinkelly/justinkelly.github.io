---
layout: post
title: "Best PHP truncate function"
date: 2012-06-27 23:51
comments: true
tags: php
---

I've used many different truncate functions in PHP and Smarty but the below script is definetly the best.
It can break on period, end of word / space or however you need.

The default action is to break on the first "." after $limit characters and then pad with "...". 

_myTruncate.php_ 

{% highlight php %}
<?php
 
// Original PHP code by Chirp Internet: www.chirp.com.au
// Please acknowledge use of this code by including this header.
// http://www.the-art-of-web.com/php/truncate/
 
function myTruncate($string, $limit, $break=".", $pad="...")
{
  // return with no change if string is shorter than $limit
  if(strlen($string) <= $limit) return $string;
 
  // is $break present between $limit and the end of the string?
  if(false !== ($breakpoint = strpos($string, $break, $limit))) {
    if($breakpoint < strlen($string) - 1) {
      $string = substr($string, 0, $breakpoint) . $pad;
    }
  }
 
  return $string;
}
 
?>
{% endhighlight %}

[http://www.the-art-of-web.com/php/truncate/](http://www.the-art-of-web.com/php/truncate/) has a write up with all the different 
options, foramts and additonal functions.

If you need to do any kind of truncating of text/html in PHP
