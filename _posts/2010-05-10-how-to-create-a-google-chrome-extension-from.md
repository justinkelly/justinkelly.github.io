--- 
layout: post
title: How to create a Google Chrome extension from a greasemonkey/user script
published: true
date: 2010-05-10
categories: 
- chrome
- extensions
- google
posterous_url: http://blog.justin.kelly.org.au/how-to-create-a-google-chrome-extension-from
posterous_slug: how-to-create-a-google-chrome-extension-from
---

Follow these steps to create a chrome extension from your userscript

* Create a folder for your extension
* Place the greasmonkey/user script javascript file in this folder
* Create a 128px * 128px icon for your extension and place in this folder
* Create a file called `manifest.json` in this folder
  * example is below - replace the `pinboard.in` content with your details

```
{
  "name": "Pinboard.in clean up",
  "version": "0.1",
  "description": "Clean up the UI of pinboard.in",
  "icons": { "128": "pinboard128.png" },
  "content_scripts": [
    {
      "matches": ["http://www.pinboard.in/*","http://pinboard.in/*"],
      "js": ["pinboardin_clean_up.user.js"]
    }
  ]
}
```
 
### Note

* replace 'pinboardin_clean_up.user.js' with your js file and matches with which pages you want your script to work on
* refer the chrome extensions developers wiki for more details on manifest.json
 
* Zip up this folder
* Go to the Chrome extensions page: [https://chrome.google.com/extensions](https://chrome.google.com/extensions)
  * Sign in and click the 'Publish your extension' link on the botton left
* Google will ask you to upload a zip file, just upload the zip file you created, follow the steps and your extension will be publish on the Chrome extensions page
