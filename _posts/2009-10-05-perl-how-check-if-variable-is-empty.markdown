--- 
layout: post
title: "Perl: how check if variable is empty"
published: true
date: 2009-10-05
tags: 
- perl
---
Need a Perl equivilant of PHPs empty() ?

Purpose: Check is $value is empty

```
if( $value  =~ /^\s*$/)
{
  #...
}
```

Purpose: Check is $value is not empty

```
if( $value  !~ /^\s*$/ )
 {
  #...
}
```
