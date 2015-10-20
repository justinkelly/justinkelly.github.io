---
layout: post
title: "How to fix Ubuntu unlock wireless/Gnome keyring issues"
date: 2013-04-19 01:11
comments: true
tags: ubuntu, linux, gnome
---

Even if you manage to get wireless/wifi working fine in Ubuntu, one annoying 
issue (if you have auto login set) will be that the 'Gnome keyring' will keep prompting you for a password every time you login
or wake from hibernation - so that it could connect to my Wi-Fi network. 

![](https://googledrive.com/host/0B3qPjbk9su5uT0pQdVhVYXVUbEk/Blog/2013-04-Blog-auto-unlock-keyring-01-enter-password.jpg)

The solution is simple but one you shouldn't have to worry about:

 * Right click the Network Manager icon in your panel
 * Select Edit Connections, and switch to the Wireless tab
 * Select the connection you want to work with and click the Edit button
 * Check the boxes for Connect Automatically and Available to all users.
