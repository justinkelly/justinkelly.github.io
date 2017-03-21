--- 
layout: post
title: "Simple mcrypt encrypt & decrypt functions for PHP : How to"
published: true
date: 2011-09-16
tags: php
---
After more searching through the [php.net](http://php.net) and stackoverflow comments below 
is the simplest way i have come around to encrypt & decrypt info in PHP

It works and only 1 line per function

``` php
<?php
 
    $text ='some text';
    $salt ='whatever_you_want';
 
    function simple_encrypt($text,$salt)
    {  
        return trim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $salt, $text, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))));
    }
 
    function simple_decrypt($text,$salt)
    {  
        return trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $salt, base64_decode($text), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)));
    }
 
?>
```

Refer gist for comments [https://gist.github.com/justinkelly/1222159](https://gist.github.com/justinkelly/1222159)