--- 
layout: post
title: "How to: Rotate a video in linux"
published: true
date: 2011-12-14
tags: 
- linux
- ubuntu
---
For the life of me I can't figure out how to flip/rotate a video in linux using any GUI apps

Here's the commandline way to do it<br />

```
mencoder -ovc lavc -vf rotate=2 -oac copy INPUT.AVI -o OUTPUT.AVI
```

The rotate=2 can be replaced with whatever option best suits your needs. Rotating video options are below:

* 0 Rotate by 90 degrees clockwise and flip (default)
* 1 Rotate by 90 degrees clockwise
* 2 Rotate by 90 degrees counterclockwise
* 3 Rotate by 90 degrees counterclockwise and flip.

