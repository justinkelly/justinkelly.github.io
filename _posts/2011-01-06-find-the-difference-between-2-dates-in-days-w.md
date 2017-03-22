--- 
layout: post
title: find the difference between 2 dates in days with PHP
published: true
date: 2011-01-06
tags:  php
---

Need to find the number of days between 2 dates with PHP in an older version of PHP? The below code wil work fine in versions of PHP 5 and below.

`date_diff_days.php`
``` php
<?php
function date_diff_in_days($from, $to = 'now')
{
    $date1 = strtotime($from);
    $date2 = strtotime($to);
    $dateDiff = $date1 - $date2;
    return floor($dateDiff/(60*60*24));
}
?>
```