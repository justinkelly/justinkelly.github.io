--- 
layout: post
title: How to add Wikipedia as a Chrome search engine
published: true
date: 2010-07-14
tags: chrome
---

For a simple way to add Wikpedia into Chrome as a search engine follow the below steps:

* in Chrome go to Tools menu, 
* then Options,
* in the Default Search section click Manage
* click Add and enter the below details in the available fields

``` conf
Name: Wikipedia
Keyword: wiki
URL: http://en.wikipedia.org/wiki/%s
```

refer image below:

{% image_tag src="/img/chrome-wiki-1.png" width="400" %}

No in chrome just type wiki followed by where you want, ie `wiki php` 
in the chrome address box (refer image below) and chrome will now search wikipedia for that term

{% image_tag src="/img/chrome-wiki-2.png" width="400" %}