---
layout: post
published: true
title: How to pretty-print JSON in linux
comments: true
tags: python ubuntu linux bash json
---

If you are working with an JSON API from the Linux commandline with tools like `curl`, you will often find that the JSON is returned in just one big long line.

To make this readable you can use the python json module and pipe the output to less.

``` bash
alias prettyjson='python -m json.tool | less'
```

To make this alias permanent, put the above line in your `.bashrc` file

``` bash
echo "alias prettyjson='python -m json.tool | less'" >> ~/.bashrc
```

To use this alias, pipe the curl output to `prettyjson` like below

``` bash
curl http://someurl/api | prettyjson
```
