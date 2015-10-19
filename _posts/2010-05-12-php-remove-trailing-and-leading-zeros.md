--- 
layout: post
title: PHP remove trailing and leading zeros
published: true
date: 2010-05-12
categories:
- php
posterous_url: http://blog.justin.kelly.org.au/php-remove-trailing-and-leading-zeros
posterous_slug: php-remove-trailing-and-leading-zeros
---
couldn't find a nice 'number clean' function for php for remove leading and 
trailing zeros (and trailing decimal points) so hear is function number_clean, enjoy :)

{% highlight php %}
<?php

    /*
    * Function: number_clean
    * Purpose: Remove trailing and leading zeros - just to return cleaner number
    */ 
    public function number_clean($num){ 
    
        //remove zeros from end of number ie. 140.00000 becomes 140.
        $clean = rtrim($num, '0');
         //remove zeros from front of number ie. 0.33 becomes .33
        $clean = ltrim($clean, '0');
        //remove decimal point if an integer ie. 140. becomes 140
        $clean = rtrim($clean, '.');
     
        return $clean;
    }
?>
{% endhighlight %}