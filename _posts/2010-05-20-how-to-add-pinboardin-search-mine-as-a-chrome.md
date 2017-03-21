--- 
layout: post
title: How to add Pinboard.in 'Search Mine' as a Chrome search engine
published: true
date: 2010-05-20
tags: [ chrome, pinboard.in ]
---
For a simple way to search your Pinboard.in bookmarks, you can add Pinboard.in 'Search Mine' 
into Chrome as a search engine follow the below steps:

1. In Chrome go to Tools menu, then Options, 
2. Iin the Default Search section click Manage
3. Click Add and enter the below details in the available fields

```
Name: Pinboard.in - Search Mine
Keyword: pin
URL:  http://pinboard.in/search/?query=%s&amp;mine=Search+Mine
```

Refer image below

![](/img/pin-chrome.png)

just type `pin` followed by what you want, ie 'pin php arrary' in the chrome address box 
(refer image below) and chrome will now seasrch google maps for that address

{% image_tag src="/img/pin-chrome-bar.png" width="400" %}