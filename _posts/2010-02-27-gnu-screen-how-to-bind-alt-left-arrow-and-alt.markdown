--- 
layout: post
title: "GNU Screen: how to bind Alt + Left Arrow & Alt + Right Arrow to \tprev/next"
published: true
date: 2010-02-27
tags: 
- screen
- linux
- vi
---
for a simple way to switch between GNU Screen 'screens' 
using Alt + Arrow key, use the below key bindings in your .screenrc file

    # Arrow keys to switch terminals (only works with X) 
    # Alt + left 
    bindkey ^[[1;3D prev 
    # Alt + right 
    bindkey ^[[1;3C next 

note: 
 * don't use Ctrl + Alt + Left/Rigth Arrow as its used by GNOME to swap virtual desktops 
 * nor firefox style as its used by GNOME Terminal for switching its tabs 
 * to find out what Alt/Fn/Ctrl characters equal what just execute cat and start typing
