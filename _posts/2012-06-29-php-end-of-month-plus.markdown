---
layout: post
title: "PHP end of month plus"
date: 2012-06-29 04:42
comments: true
tags: php
---

I was trying to find how to calculate end of the month + 60 days in PHP,
took a while but finally got it working using the below code - just change 60 days to whatever you want

_end_of_month_plus_60_days.php_

```
<?php
 
    $invoice_date ='now'; //use 'now' if for the current month else add your data here
 
    $d = new DateTime( $invoice_date );
    $d->modify( 'last day of this month' );
    $d->modify( '+60 days' );
    $due_date = $d->format( 'Y-m-d' );
 
?>
```
