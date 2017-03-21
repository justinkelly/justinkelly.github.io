--- 
layout: post
title: How to add Google Maps as a Chrome search engine
published: true
date: 2010-03-02
tags: 
- chrome
- google
---

For a simple way to add Google Maps into Chrome as a search engine follow the below steps:

1. in Chrome go to Tools menu,
1. then Options
1. and in the Default Search section click Manage
1. click Add and enter the below details in the available fields

```
Name: Google Maps
Keyword: map
URL: http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;q=%s
```

Refer image below:

![](/img/google_maps.png)

Just type `map` followed by where you want, ie `map MCG, Melbourne, Australia`
in the chrome address box (refer image below) and chrome will now seasrch google maps for that address

![](/img/google_map_box.png)

Note:

* this is using english as the default language, youchange change this by altering the hl=en section of the url
* to use Google Maps Australia use: `http://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;q=%s`
