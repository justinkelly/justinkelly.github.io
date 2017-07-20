---
layout: post
published: true
title: How to convert YouTube videos to MP3 audio files on Linux
comments: true
tags: ubuntu linux bash
---

Install the latest version of `youtube-dl`. Even if this is available in your distros repositoreis it's best to grab the latest version from the yt-dl site.

``` bash
sudo apt-get install ffmpeg

sudo apt-get remove -y youtube-dl
   
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl

sudo chmod a+x /usr/local/bin/youtube-dl

hash -r
```

To converting a YouTube video to MP3 files jsut use the below command and add the YouTube url after at the end

``` bash   
youtube-dl -x --audio-format mp3 https://www.youtube.com/wat..
```

If you can;t download `youtube-dl` from their site for the repository you can try using Python pip

``` bash
$ pip install youtube_dl
```

If you don't have pip installed, you have to install python:

``` bash
$ apt install python
```


