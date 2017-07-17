---
layout: post
published: true
title: Using CSS3 attribute selectors to align images in Markdown
comments: true
tags: css
---

If you are looking to align images in a pure markdown (no HTML) document you can use CSS3
attribute selectors to select images with a certain anchors in its path.

Example

_Markdown_
``` markdown
![Alt](image.jpg#right)
```

_CSS_
``` css
img[src*='#right']{ float: right; }
```

This way with a few lines of css you can use valid markdown to control layout