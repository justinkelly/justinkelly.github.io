---
layout: post
title: Ucwords for Javascript
comments: true
tags: php jquery javascript
published: true
---

PHP has a great function [ucwords](http://php.net/manual/en/function.ucwords.php) that
uppercases the first character of each word in a string.  So `hello world` becomes `Hello World`.

Javascript and jQuery are both missing this usefull function so I mashed together the below port of ucwords to javascript

_ucwords.js_
``` javascript
String.prototype.ucwords = function() {
    str = this.toLowerCase();
    return str.replace(/(^([a-zA-Z\p{M}]))|([ -][a-zA-Z\p{M}])/g,
        function($1){
            return $1.toUpperCase();
        });
}
```

Example usage:

``` javascript
var hello = 'HELLO world';
hello.ucwords();

```

This will convert `HELLO world` to `Hello World`, etc..

Note: A pure port of PHPs ucwords would remove the `str = this.toLowerCase();` line so as leave
capitalised words as it
