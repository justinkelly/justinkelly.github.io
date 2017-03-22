--- 
layout: post
title: "Simple PHP function to generate a random alpha-numeric code with only readable characters :: How to"
published: true
tags: php
---

I needed to create simple codes for a webapp that had unreadable/possibly confusing characters like 0,O, etc.. removed.  

If you have any improvements to the below code let me know.

``` php
<?php
/*
 * Simple PHP function to generate a random apha-numeric code with only readable characters
 */
function randomCode($length=4) {
   /* Only select from letters and numbers that are readable - no 0 or O etc..*/
   $characters = "23456789ABCDEFHJKLMNPRTVWXYZ";
   for ($p = 0; $p < $length; $p++) 
   {
       $string .= $characters[mt_rand(0, strlen($characters)-1)];
   }
   return $string;
}
?>
```

Refer gist for comments [https://gist.github.com/justinkelly/1647016](https://gist.github.com/justinkelly/1647016)
