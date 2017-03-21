--- 
layout: post
title: "Get the number of seconds since Jan 1, 0001 in PHP : How to"
published: true
date: 2011-09-18
tags: 
- php
---
If you need to get the number of seconds since Jan 1, 0001 in PHP you can&#39;t
use the normal date or time functions as they are based around Jan 1, 1970

Here is a simple function to get the number of seconds since Jan 1, 0001 (or any other date)

This date calc is required if you are using the ACH PaymentsGateway.com API

Requires PHP 5.3 and above

``` php
<?php
    /*
     * Very simple way to get the number of seconds from Jan 1, 0001 or any other date
     * the normal date/time functions only work from 1 Jan 1970
     * Requires PHP 5.3 or above
     * Start: must be in YYYY-MM-DD format
     * End: must be in YYYY-MM-DD format
     */
    function seconds_since($start='0001-01-01',$end=date(Y-m-d))
    (
        
        $datetime1 = new DateTime($start);
        $datetime2 = new DateTime($end);
        $interval = $datetime1->diff($datetime2);
    
        return $interval->format('%a') * 24 * 60 * 60;
    }
?>

```