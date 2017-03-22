---
layout: post
title: "GNU Screen and Vim: making vim tab mappings work"
published: true
tags: screen linux vi
---

if using Vim in GNU Screen and you want to use fancy key bindings to navigate tabs, 
first make sure the below is set in your .vimrc file 

    set term=xterm
    
this will allow Ctrl+PageUp/Down to work to switch tabs 

if you want to use Alt+Up/Down add the below in 
 
    map <M-up> :tabprevious<CR> 
    map <M-down> :tabnext<CR>
