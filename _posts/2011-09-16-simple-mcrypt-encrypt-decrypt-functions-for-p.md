--- 
layout: post
title: "Simple mcrypt encrypt & decrypt functions for PHP : How to"
published: true
date: 2011-09-16
categories: 
- php
posterous_url: http://blog.justin.kelly.org.au/simple-mcrypt-encrypt-decrypt-functions-for-p
posterous_slug: simple-mcrypt-encrypt-decrypt-functions-for-p
---
After more searching through the [php.net](http://php.net) and stackoverflow comments below 
is the simplest way i have come around to encrypt & decrypt info in PHP

It works and only 1 line per function

``` php simple_encrypt.php
<?php
 
    $salt ='whatever_you_want';
 
    function simple_encrypt($text)
    {  
        return trim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $salt, $text, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))));
    }
 
    function simple_decrypt($text)
    {  
        return trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $salt, base64_decode($text), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)));
    }
 
?>
```
