---
layout: post
title: Trim for jQuery
date: '2012-09-27 02:35'
comments: true
tags: jquery
published: true
---
`trim()` is another function I miss in jQuery / Javascript, the below function was found in a random stackoverflow thread 
but works great

This trims whitespace from the start and end of a string

``` javascript
(function () {
 if (!String.prototype.trim) {
 /**
  * Trim whitespace from each end of a String
  * @returns {String} the original String with whitespace removed from each end
  * @example
  * ' foo bar    '.trim(); //'foo bar'
  */
 String.prototype.trim = function trim() {
 return this.toString().replace(/^([\s]*)|([\s]*)$/g, '');
 };
 }
 })();
 ```
