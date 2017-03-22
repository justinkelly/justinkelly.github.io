---
layout: post
title: "Make broadcom wifi work perfect in ubuntu"
date: 2012-07-31 01:17
comments: true
tags: linux  ubuntu broadcom wireless
---

If your unlucky enough to have a Broadcom wireless chip integrated into your laptop
and your trying to get it to work in Ubuntu/Linux there is only one way to make wifi work 100% perfectly.


1. Uninstall the proprietary Broadcom drivers, use `sudo jockey-gtk`
2. Disable Integrated wifi in the bios
3. Buy a [TP-Link TL-WN721N](http://www.amazon.com/TP-Link-TL-WN721N-150Mbps-Wireless-Adapter/dp/B002ZDQHS4) usb wifi card

### TP-Link TL-WN721N
![](/img/tp-link.jpg)
I've tried a few wifi devices usb and pci-express but the [TP-Link TL-WN721N](http://www.amazon.com/TP-Link-TL-WN721N-150Mbps-Wireless-Adapter/dp/B002ZDQHS4) just works - tested in various version of Ubuntu

No drivers to install, nothing to config, just plug it in, boot up and Ubuntu can see and connect to your wifi as it's supposed it

If you have any issues with Ubuntu\Linux and integrated wifi, don't bother messing around with the configs or compat-kernels - just
buy the tp-link usb - it'll save you hours.

Other similar tp-link usb cards use different chipsets - so make sure you get the TL-WN721N

### D-Link DWA-643
![](/img/d-link.jpg)
I've also tried the pci-expresscard based [DWA-643](http://www.amazon.com/DWA-643-Xtreme-N-Notebook-EXPRESSCARD/dp/B000V6C70O/) it looks to 'just work' starts fine - lights up, sees all wifi networks but not once could I get it to connect to any wifi networks - no matter the security setup - just didnt work :(

Both the tp-link and d-link use the open source Atheros code - before you buy any other models check to see if its listed as 'just works' in the linked wiki pages below:

* [https://help.ubuntu.com/community/WifiDocs/WirelessCardsSupported](https://help.ubuntu.com/community/WifiDocs/WirelessCardsSupported)
* [http://askubuntu.com/questions/83137/list-of-wireless-adapters-that-just-work-with-ubuntu-11-10](http://askubuntu.com/questions/83137/list-of-wireless-adapters-that-just-work-with-ubuntu-11-10)
* [http://www.fsf.org/resources/hw/index_html/net/wireless/index_html/cards.html](http://www.fsf.org/resources/hw/index_html/net/wireless/index_html/cards.html)
