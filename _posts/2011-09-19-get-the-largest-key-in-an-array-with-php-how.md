---
layout: post
title: "Get the largest key in an array with PHP : How to"
published: true
tags: php
---

``` php
<?php
    
    /*
     * To get the largest key in an array
     */ 
    $array = array( 0 => 'first', 1=> 'second', /* ... */ 99 => 'nth' );
    $max_key = max( array_keys( $array ) ); // 99
?>
```

Refer gist for comments [https://gist.github.com/justinkelly/1226364](https://gist.github.com/justinkelly/1226364)