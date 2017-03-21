---
layout: post
title: "Commandline Dropbox client"
date: 2013-04-15 03:06
comments: true
tags: dropbox linux bash 
---

Looking for a simple way to upload files from your server to Dropbox without doing a full sync?

By using the script from Andrea Fabrizi your easily upload or download individual files to and from Dropbox from the commandline

## Setup

Download the script from github with wget

    wget https://raw.github.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh

Make it executable

    chmod +x dropbox_uploader.sh

Run the dropbox_uploader script `./dropbox_uploader.sh` and it'll print out the below:

```
This is the first time you run this script.
Please open this URL from your Browser, and access using your account:

-> https://www2.dropbox.com/developers/apps

If you haven't already done, click "Create an App" and fill in the
form with the following data:

App name: MyUploader888
Description: What do you want...
Access level: App folder or Full Dropbox

Now, click on the "Create" button.

When your new App is successfully created, please type the
App Key, App Secret and the Access level:

# App key: 
```

Open up the url [https://www2.dropbox.com/developers/apps](https://www2.dropbox.com/developers/apps) in your browser, sign into Dropbox
and click the `Create an app` button

{% image_tag src="/img/2013-Blog-Dropbox-create-app.png" width="400" %}

Fill in the app name as listed by the script, select 'Core' and 'App folder access' (this will create a folder call /App/MyUploader888 in your Dropbox director. 
If you want to access all files in your Dropbox select 'Full Dropbox'

{% image_tag src="/img/2013-Blog-Dropbox-core.png" width="400" %}

Dropbox will now show you your API details for this app, get the 'App key' and paste it into commandline

{% image_tag src="/img/2013-Blog-dropbox-api-info.png" width="400" %}

Then paste in the 'App secret' when requested

```
# App key: jxxxxxxxxxxxxxxp
# App secret: sxxxxxxxxxxxxxx4
# Access level you have chosen, App folder or Full Dropbox [a/f]: 
```
Select the access level and it'll provide you with link to verify the app. 

    https://www2.dropbox.com/1/oauth/authorize?oauth_token=nxxxxxxxxxxxxxxf

Open the link in your browser and Allow the app access

Your now setup to upload/download individual files from the command line to and from Dropdox

## Usage

To upload a file from your server to Dropdox just run

    ./dropbox_upload.sh upload myfiles.zip

If you have selected the Full Dropbox access you can sepecify the folder location to upload to 

    ./dropbox_upload.sh upload /some/folder/indropbox.com/myfiles.zip

Other commands available are `download` which uses the same style as the uppload command, `delete`,`list`,`info` and `unlink`
