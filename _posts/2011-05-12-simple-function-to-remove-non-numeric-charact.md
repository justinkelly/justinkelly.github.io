--- 
layout: post
title: simple function to remove non numeric characters from a string with PHP
published: true
tags: php
---

_stripNonNumeric.php_
``` php
<?php
/*
  Remove non-numeric characters from a string.
*/
function stripNonNumeric($str='') {
  return preg_replace('(\D+)', '', $str);
}
?>
```

Refer gist for comments [https://gist.github.com/justinkelly/953216](https://gist.github.com/justinkelly/953216)
