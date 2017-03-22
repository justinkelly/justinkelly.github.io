--- 
layout: post
title: Ubuntu / Broadcom slow wifi issue solved
published: true
tags: linux ubuntu broadcom
---
### Update
Refer [http://blog.justin.kelly.org.au/make-broadcom-wifi-work-perfect-in-ubuntu/](http://blog.justin.kelly.org.au/make-broadcom-wifi-work-perfect-in-ubuntu/) for the only way to make wifi work perfect for laptops like the HP Mini 2140 that have integrate Broadcom wifi chipset

### Old info

Since upgrading from Ubuntu 9.04 on my HP Mini 2140 I've found that all recent Ubuntu derivatives (Jolicloud etc.) and other recent distros (Fedora 14 etc..) have an issue with the Broadcom wifi drivers where download speed goes back to dial-up level. 

If you search [ubuntuforums.org](http://ubuntuforums.org) you'll find heaps of posts all complaining of 
slow wifi speed with Broadcom devices (4322 in the case of my HP Mini). most posts have no real solution.

### Whats the solution?

Set your wifi router to use G wifi mode.  My router was using N mode - This seems to 
have issues with the Broadcom wifi drivers, once this was changed to G mode my 
wifi speeds came straight back to normal levels :)

refer: [http://getsatisfaction.com/jolicloud/topics/very_slow_wifi_on_hp_mini_2140_jolicloud_1_1](http://getsatisfaction.com/jolicloud/topics/very_slow_wifi_on_hp_mini_2140_jolicloud_1_1)
