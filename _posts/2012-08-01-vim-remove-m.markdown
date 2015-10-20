---
layout: post
title: "Vim remove ^M"
date: 2012-08-01 13:45
comments: true
tags: 
- vi
- vim
---

I'm always needing to remove `^M`s in vim and forgetting the command - heres the details:

The stuff to type in

```
:%s/ctrlkey+v then ctrlkey+M//g
```

What appears in the vim command line

```
:%s/^V^M//g
```

Note:

* `^M`s appear in your files after edits in Windows
* In the comments on [Google+](https://plus.google.com/118359435432651949322/posts/HeEkDG5J5Mg) Kae has pointed out that
you can just enter `%s/ctrlkey+v then enter//g` to remove the `^M`s as well
