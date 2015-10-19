---
layout: post
title: "Google Plus photos extension for non Chromebook Pixels"
date: 2013-06-26 00:37
comments: false
categories: chrome
---

Earlier today Google released a new Chrome [extension](https://plus.google.com/u/0/+ajasver/posts/MoF7hRqeBut) for Google+ Photos that only works on the new Chromebook Pixel.

I've been after the functionality of this extension for my non-Pixel PCs/laptops. So quickly unminifed the source code, removed the pixel only limiation and loaded in Chrome.

The extension works fine - but may be missing some features that are in the Pixel version.

I've uploaded this extension to GitHub but won't be uploading to the chrome webstore or distributing a .crx for it. Installation instructions are below.

[https://github.com/justinkelly/google_plus_photos](https://github.com/justinkelly/google_plus_photos)

## ReadMe from GitHub

### Status

* The original extensions javascript has been unminified and adjusted so that it not starts on a non Chromebook Pixel

### Install

* Download
  * the .zip [https://github.com/justinkelly/google_plus_photos/archive/master.zip](https://github.com/justinkelly/google_plus_photos/archive/master.zip) and unzip
  * or the git repository `https://github.com/justinkelly/google_plus_photos.git`
* In Chrome open `chrome://flags` and Enable 'Experimental Extensions APIs'
  * refer screenshot below
![](https://raw.github.com/justinkelly/google_plus_photos/master/install_api.png)
* In Chrome Manage Extensions page enable 'Developer mode'
  * refer 1. in screenshot below
* Then click 'Load unpacked extension' and choose the folder for this git repo

![](https://raw.github.com/justinkelly/google_plus_photos/master/install.png)

### Use

  Once installed you can now launch Google+ Photos from your Chrome apps menu, refer below screenshot of startup in Win 7

![](https://raw.github.com/justinkelly/google_plus_photos/master/win7.png)

### Comments ?

Join the discussion at the [Google+ post](https://plus.google.com/118359435432651949322/posts/T1f2J5bJrUb)
