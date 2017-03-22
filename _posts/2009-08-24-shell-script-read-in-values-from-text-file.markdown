---
layout: post
title: "shell script: read in values from text file"
published: true
tags: 
- linux
- shell
---
before i forget how to do this again assuming test.txt contains a number on each line, ie. 
```
123
324
45656
```

heres a couple of simple ways to read from the file and so stuff in a shell script

```
#!/bin/bash
INFILE=test.txt
OUTFILE=out.xml
for i in $(cat $INFILE) ; do
     #do some stuff
     echo item: $i
done
```

or use

```
while read line
    do
        echo $line;
done < $INFILE

(echo "</oai_dc:dc>" >> $OUTFILE )
```
