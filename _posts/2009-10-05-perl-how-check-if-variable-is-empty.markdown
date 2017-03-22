--- 
layout: post
title: "Perl: how check if variable is empty"
published: true
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
