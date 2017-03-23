---
layout: post
title: 'Simple bash if then else example '
published: true
tags: bash linux
comments: true
---

``` shell
if [ -r somefile ]; then 
   content=$(cat somefile) 
elif [ -f somefile ]; then 
   echo "The file 'somefile' exists but is not readable to the script." 
else 
   echo "The file 'somefile' does not exist." 
fi 
```
