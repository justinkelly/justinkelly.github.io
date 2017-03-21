---
layout: post
title: "First rule of Vim - drop the arrow keys"
date: 2012-08-24 00:15
comments: true
tags: vi
---

If your new to Vim the first thing you should do is disable the arrow keys.
Disabling the arrow keys in your text-editor sounds retarded but it'll make you a much for effective Vim user

Just stick the  below config into your .vimrc
file and you'll be forced to use Vim the way it was designed

    noremap <Up> <Nop>
    noremap <Down> <Nop>
    noremap <Left> <Nop>
    noremap <Right> <Nop>

You'll soon find the navigating via `h,j,k,l` and `/?` faster than using the arrows and will make you learn many more Vim commands
