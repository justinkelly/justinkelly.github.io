--- 
layout: post
title: "Perl: how check if variable is empty"
published: true
date: 2009-10-05
tags: 
- perl
posterous_url: http://blog.justin.kelly.org.au/perl-how-check-if-variable-is-empty
posterous_slug: perl-how-check-if-variable-is-empty
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
