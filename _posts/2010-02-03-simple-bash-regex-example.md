--- 
layout: post
title: simple bash regex example
published: true
date: 2010-02-03
tags: bash linux
---
since versions 3 bash has included a simple regular expression operation `=~`

below is a simple example of it in action

``` shell
######### example code #########
#search for a process and print specific section
ps=`ps aux | grep stuff | awk '{print $12 "_" $13}' `

#do some stuff
if [[ $ps =~ "something im looking for" ]]; then
    #do what you want
fi
##############################
```