---
layout: post
title: 'Perl: how check if variable is empty'
published: true
tags: perl
comments: true
---
Need a Perl equivilant of PHPs empty() ?

Purpose: Check is $value is empty

``` perl
if( $value =~ /^\s*$/)
{
  #...
}
```

Purpose: Check is $value is not empty

``` perl
if( $value !~ /^\s*$/ )
{
  #...
}
```
