---
layout: post
title: "Make Chrome auto go to the first search result"
date: 2012-07-04 01:00
comments: true
tags: chrome, google, duckduckgo
---

9 out of 10 times when I'm searching using Chrome I want the first result listed on the Google search results.

When I search for `php curl` I expect to be forwarded to the [PHP manual page for curl](http://php.net/manual/en/book.curl.php)

So instead of wasting time scanning the search results
and then clicking the first link you can update your Chrome search options so it auto goes to the first search results.

Google calls the 'I feel lucky' and DuckDuckGo calls it 'I feel ducky' :) . It's very usefull when your pretty sure you know that 
google will give the best result first and you just want to go straight to that page. Follow the simple steps below and
you can make Chrome do this

In Chrome open the 'wrench' menu, go to Settings, then click 'Manage Search Engines' in the Search settings - refer image below:

Add in new search engines - add the bottom of the window 

``` config
Name: !Google - I feel lucky
Keyword: !go
URL: http://www.google.com/search?q=%s&btnI
```

If you want to use DuckDuckGo enter

``` config
Name: !DuckDuckGo - I feel ducky
Keyword: !dgo
URL: https://duckduckgo.com/?q=%21+%s
```

Once done this is how it'll appear in the Manage Search Engines section in Chrome

![chrome add search engines](/img/chrome-direct.png)

Now if you start your search in Chrome with either `!go` or `!dgo` you'll go straith to the page you want and by-pass the search engiens results page