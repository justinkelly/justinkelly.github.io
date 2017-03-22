--- 
layout: post
title: "Simple PHP base64 encode/decode url safe functions : How to"
published: true
tags: php
---

After searching through the php base64 comments I found the best way to safely encode and decode base64 url components

``` php
<?php
function base64_url_encode($input)
{
    return strtr(base64_encode($input), '+/=', '-_,');
}
function base64_url_decode($input)
{
    return base64_decode(strtr($input, '-_,', '+/='));
}
?>
```

Refer gist for comments [https://gist.github.com/justinkelly/1219265](https://gist.github.com/justinkelly/1219265)