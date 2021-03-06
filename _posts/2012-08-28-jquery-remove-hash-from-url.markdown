---
layout: post
title: jQuery remove hash from URL
comments: true
tags: jquery
published: true
---
If you have issues with jQuery adding # to the end of URLs , which normally happens 
when you have jQuery actions tied to links - such as below

``` html
<a href='#' class="your-class">Show Locations</a>
```

To make jQuery not append `#` to the end of the current URL use the `preventDefault()` function - see below for an example

``` javascript
$('.your-class a').click( function(event){

        // stop the click on the link adding a # to the end of the 
        event.preventDefault();

        // do other stuff
        $('.locations').toggle();

});
```

Now when the `Show Locations` link is clicked a `#` will not be added to the current URL

Refer [http://developer.mozilla.org/en-US/docs/DOM/event.preventDefault](developer.mozilla.org/en-US/docs/DOM/event.preventDefault) for more info
