---
layout: post
title: "Trello big edit"
comments: true
tags:  chrome
---

If you use [trello.com](trello.com) alot like myself, and add lots (pages) of information in the card description section 
you'll find the small card window a real pain to use.

To fix this I whipped up a quick firefox/chrome userscript to make the card edit window full screen, code is below

### Chrome

You can grab this extension from the [Google Chrome webstore][chrome]:

 * [Full screen card view for Trello][chrome]

Or you can grab the extension from [GitHub][git].  Just download it to your PC, open the Extension section in Chrome and drag this file in, Done

* [https://github.com/justinkelly/trello_big_edit/raw/master/chrome_extension/trello_big_edit.crx](https://github.com/justinkelly/trello_big_edit/raw/master/chrome_extension/trello_big_edit.crx)

Note: This extension was listed as "Trello : Big Edit' in the Chrome store but Trello asked me to change the name

### Firefox

Easiest way to add this into Firefox is to

* Install the Greasemonkey script
    * [https://addons.mozilla.org/firefox/addon/748](https://addons.mozilla.org/firefox/addon/748)
* and then install my userscript from: 
    * [http://userscripts.org/scripts/show/139221](http://userscripts.org/scripts/show/139221)

### Code

_trello_big_edit.user.js_

``` javascript
// ==UserScript==
// @name           Trello : Big Edit
// @author         Justin Kelly http://justin.kelly.org.au @_justin_kelly
// @version        2
// @include        https://trello.com/*
// @include        http://trello.com/*
// ==/UserScript==
 
cssString = ' '+
    '.window{ '+
    '   left:0px !important; ' +
    '   top:0px !important; ' +
    '   width:100% !important; '+
    '} '+
    ' '+
    '.window-main-col '+
    '{ '+
    '   width:80% !important; '+
    '} '+
    '.window-main-col .edit textarea.field '+
    '{ '+
    '   min-height:492px; '+
    '} '+
    '.window-wrapper{ '+
    '   height: 100%; '+
    '} ';
 
insertCSS(cssString);
// Function to insert CSS
function insertCSS(cssToInsert) {
    var head=document.getElementsByTagName('head')[0];
    if(!head)
        return;
    var style=document.createElement('style');
    style.setAttribute('type','text/css');
    style.appendChild(document.createTextNode(cssToInsert));
    head.appendChild(style);
}
```

[chrome]: https://chrome.google.com/webstore/detail/full-screen-card-view-for/iakcnnmjbdoemkjecojadhpinebnkipm
[git]: https://github.com/justinkelly/trello_big_edit