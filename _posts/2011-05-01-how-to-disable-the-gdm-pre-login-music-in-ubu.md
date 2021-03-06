---
layout: post
title: How to disable the GDM pre-login 'music' in Ubuntu 11.04
published: true
tags: linux ubuntu
---
To get rid of the annoying pre login gdm 'music' in Ubuntu 11.04 just open the 'Startup Applications' from the Control Panel

1. Click on the logout button on the top right
1. Select `System Settings` to get to the Control Panel
2. Then just untick the `GNOME Login Sound` option - refer image below

![](/img/gdm.jpg)

and then option the terminal/commandline and execute this command

``` shell
sudo -u gdm gconftool-2 --type=bool --set /desktop/gnome/sound/event_sounds false
```

restart and you won't get those annoying drums


### Old info

One annoying issue in Ubuntu 11.04 is that there is no GUI to disable the pre-login sound 
that GDM (the Ubuntu login screen) makes when it opens. 
This 'music' becomes an issue when you work in a quiet environment

from the command line execute

``` shell
gksudo gedit /etc/gdm/custom.conf
```

and add the line

``` conf
SoundOnLogin=false
```

above the and the `[daemon]` line

save the file and restart - now you won't hear the pre-login 'music' at the login screen
