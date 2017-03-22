---
layout: post
title: Google Chrome script to clean up the UI of Pinboard.in
published: true
tags: [ chrome , google , pinboard.in ]
---
Pinboard.in is a great minimalist bookmarking service.  I moved to Pinboard at the start of the year and have never looked back to Delicious.

One issue i have with pinboard though is that in the bookmark listing, minimal though it is is still to bulky and padded out.

I've uploaded to userscripts.org a Chrome user script / Firefox greasemonkey script to clean up the UI of Pinboard.in

### Refer

* [http://userscripts.org/scripts/source/75422.user.js](http://userscripts.org/scripts/source/75422.user.js)
* [http://userscripts.org/scripts/show/75422](http://userscripts.org/scripts/show/75422)

### Removed sections of the Pinboard UI

- star
- when 
- footer
- timer
- pinboard logo
- description 
- line breaks in the bookmark section

### Changed

- background of private bookmarksed changed to white - like a normal bookmark
- Padding and margins removed from each bookmark
- Bulk edit margins remove
 
Screenshot of Pinboard pre script

{% image_tag src="/img/pinboard_original.png" width="400" %}

Screenshot of Pinboard post script

{% image_tag src="/img/pinboard_with_user_script.png" width="400" %}

## To install

### Firefox

 You need to install Greasemonkey: [https://addons.mozilla.org/en-US/firefox/addon/748](https://addons.mozilla.org/en-US/firefox/addon/748)
 Then restart Firefox and click [http://userscripts.org/scripts/source/75422.user.js](http://userscripts.org/scripts/source/75422.user.js)

### Chrome 

Just click [http://userscripts.org/scripts/source/75422.user.js](http://userscripts.org/scripts/source/75422.user.js)
 and chrome will install it as en extension

## Update

- For chrome uses I have created an extension refer: https://chrome.google.com/extensions/detail/kbdmpfljdnaooidfhpgkmhigfcfomioi
- May 24, 2010 : Version .2 uploaded to google - body now set as display:inline to fix some small display issues
 
Source is hosted at bitbucket: [bitbucket.org/justin.kelly.org.au/pinboard_clean_up/src](http://bitbucket.org/justin.kelly.org.au/pinboard_clean_up/src)
