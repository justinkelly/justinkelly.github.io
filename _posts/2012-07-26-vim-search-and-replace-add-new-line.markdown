---
layout: post
title: "Vim search and replace - add new line"
comments: true
tags: vi
---

Was using Vim and needed to replace text where the line started with ` - text` with a newline and then `### text` in a 
large markdown based document I was formatting

After a few goes here's the Vim search and replace command to add new line and replace text

``` vim new_ling_and_replace.vim
:%s/$- /\r### /g
```
