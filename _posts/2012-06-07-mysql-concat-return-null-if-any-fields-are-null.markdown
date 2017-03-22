---
layout: post
title: "Workaround for the MySQL concat() returns NULL if any fields are NULL problem"
date: 2012-06-07 04:55
comments: true
tags: mysql
---

In MySQL the `CONCAT` funcation returns `NULL` if any of the concated fields are `NULL`, who knew? - so even if all the fields except 
1 have valid data it will return `NULL`
- aparrently this is a [feature](http://forums.mysql.com/read.php?97,109881,110052#msg-110052)

if your stuck on this the workaournd is to put an `IFNULL` in the field, refer example below:

``` sql
SELECT CONCAT(IFNULL(fName1,''),' ',IFNULL(mName2,''),' ',IFNULL(lName3,'')) AS userName
```

or use [CONCAT_WS](http://dev.mysql.com/doc/refman/5.0/en/string-functions.html#function_concat-ws) - which allows for null - but requires a seperator to be defined 