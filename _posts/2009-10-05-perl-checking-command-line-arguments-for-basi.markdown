--- 
layout: post
title: "Perl: checking command line arguments for basic sanity"
published: true
tags: 
- perl
---
Usage: ./your_script.pl 'path/to/file.txt'

Purpose: Check if argument has been supplied

```
# check files
if ( $ARGV[0] eq '')
{
   print "
###############
#    ERROR    #
 ###############
   
You have not specified an input file, please include the input file when you execute this script,
\n  
";
    exit;
}
```

Purpose: Check if file specifed in arguement exists

```
if (!-e $ARGV[0])
{   
    print " 
###############
#    ERROR    #
###############
 
The input file you specified does not exist.

";  
    exit;
}    
```
