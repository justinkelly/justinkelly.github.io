---
layout: post
title: "PHP class autoloading"
comments: true
tags: php
---

Some simple but great php tips from [Codular.com](http://codular.com/php-tips-tricks) today

Simple class autloading

``` php
<?php

function loadMyClass($class){
    echo 'We are loading class: ' . $class;
    include_once('classes/' . $class . '.inc.php');
    echo 'Class loaded.';
}

spl_autoload_register('loadMyClass');
```

In PHP 5.3 you can use the below

``` php
<?php

spl_autoload_register(function ($class){
        echo 'We are loading class: ' . $class;
        include_once('classes/' . $class . '.inc.php');
        echo 'Class loaded.';
 });
```

Just remove the `echo` sections before you deploy