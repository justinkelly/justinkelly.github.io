--- 
layout: post
title: "Get the largest key in an array with PHP : How to"
published: true
date: 2011-09-19
tags: 
- php
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