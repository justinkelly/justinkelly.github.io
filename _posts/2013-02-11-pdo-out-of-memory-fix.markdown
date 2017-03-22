---
layout: post
title: "PDO out of memory fix"
comments: true
tags: php
---

If your having issues with large PDO query sizes in PHP and getting out of memory issues the solution is to set `PDO::MYSQL_ATTR_USE_BUFFERED_QUERY` to false

refer below example

``` php
<?php
$pdo = new PDO('mysql:host=127.0.0.1', 'foo', 'bar', array(
    PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION,
));
$pdo->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);
```

For whatever reason on certain system even small queries can bomb out - just add in this attribute and your queries should now run fine in PDO
