---
layout: post
title: "PHP class autoloading"
date: 2012-07-30 01:11
comments: true
categories: [php]
---

Some simple but great php tips from [Codular.com](http://codular.com/php-tips-tricks) today

Simple class autloading
{% highlight php%}
<?php

function loadMyClass($class){
    echo 'We are loading class: ' . $class;
    include_once('classes/' . $class . '.inc.php');
    echo 'Class loaded.';
}

spl_autoload_register('loadMyClass');
{% endhighlight %}

In PHP 5.3 you can use the below
{% highlight php%}
<?php

spl_autoload_register(function ($class){
        echo 'We are loading class: ' . $class;
        include_once('classes/' . $class . '.inc.php');
        echo 'Class loaded.';
 });
{% endhighlight %}

Just remove the `echo` sections before you deploy
