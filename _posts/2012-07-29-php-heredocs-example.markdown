---
layout: post
title: "PHP heredocs example"
comments: true
tags: php
---
I'm always forgetting the php heredocs syntax

its to easy, just follow the below example, EOF can be remaned whatever you want - you just must use the same one to end the statement, 
and most importantly to end the statement the EOF must be at the start of the line or it doesn't work

``` php
<?php

    $count = 1 ; //

    $html =<<<EOF
    Using heredocs special characters all work - "',,'' are all fine, 
    php variables can be used as normal ie. $count

    For more complex stuff, arrays etc. surround the code with {}

    ie. {$_POST['user_name']}

    also always end the herdocs section with the same letters you
    started with - but MUST be at the start of the line

EOF;

?>
```