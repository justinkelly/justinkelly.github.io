---
layout: post
title: "Comments in JSON"
date: 2012-08-09 02:07
comments: true
tags: json javascript
---

> JSON does not have comments. A JSON encoder MUST NOT output comments.
_Douglas Crockford - creator of json http://tech.groups.yahoo.com/group/json/message/152_

Want to use comments in JSON even though Douglas doesn't want you to :)

Using ini, apache, xml, html or // comment formats invalidate your JSON files

_invalid_comments.json_

``` json
{
    "name": "Jack (\"Bee\") Nimble", //varchar
        "format": {
            "type":       "rect", //varchar - max 4 characters
            "width":      1920, //int
            "height":     1080, //int
            "interlace":  false, //boolean
            "frame rate": 24 //int
        }
}
```


As Douglas stated, JSON has no offical support for comments, but it doesn't mean you can't add
them in other ways

The best way I've found to add comments into JSON is to add
`_comment` style elements - after the element your commenting on - into the JSON.
Refer below for a valid JSON file with comments.

_valid_comments.json_

``` json
{
    "name": "Jack (\"Bee\") Nimble", 
        "_name_comment":"varchar",
        "format": {
            "type":       "rect", 
            "_type_comment": "varchar - max 4 characters",
            "width":      1920, 
            "_width_comment": "int",
            "height":     1080, 
            "_height_comment": "int",
            "interlace":  false, 
            "_interlace_comment": "boolean",
            "frame rate": 24,
            "_frame_rate_comment": "int"
        }
}
```

Note:

* Make sure your app ignores the `_comment` elements
* Use [jsonlint.com](http://jsonlint.com) to validate your JSON

Let me know if you have a better way to do valid comments in JSON
