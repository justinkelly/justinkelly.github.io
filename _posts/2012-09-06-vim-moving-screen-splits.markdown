---
layout: post
title: "Vim - Moving screen splits"
comments: true
tags: vi
---

Screen splits in Vim are a great feature, but until recently I had no idea how to move the screens around

To make

    ---------------
    |      |      |
    |  1   |  2   |
    |      |      |
    ---------------

Like

    ---------------
    |      |      |
    |  2   |   1  |
    |      |      |
    ---------------

Just type `crtl+w r` - this rotates the splits

Another way is `crtl+w L` - this moves the current split to the right, but using shift after control is harder
