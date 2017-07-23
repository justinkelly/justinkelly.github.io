---
layout: post
published: true
title: How to convert YouTube videos to MP3 audio files on Linux
comments: true
tags: ubuntu linux bash
---
Firstly install the latest version of `youtube-dl`.

Even if this is available in your version of Linux it's best to grab the latest version from the yt-dl site.

``` shell
sudo apt-get install ffmpeg

sudo apt-get remove -y youtube-dl
   
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl

sudo chmod a+x /usr/local/bin/youtube-dl

hash -r
```

To converting a YouTube video to MP3 files just use the below command and add the YouTube url after at the end

``` bash   
youtube-dl -x --audio-format mp3 https://www.youtube.com/wat..
```

If you can't download `youtube-dl` from their site or your Linux repository, you can try using Python pip

``` bash
$ pip install youtube_dl
```

If you don't have pip installed, you have to install python:

``` bash
$ apt install python
```
