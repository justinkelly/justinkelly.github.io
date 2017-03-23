---
layout: post
title: 'Increment a date in perl - no cpan '
published: true
tags: perl
comments: true
---
Need to increment a date in perl - but can't use cpan / non core modules - use and modify the below code

``` perl
use Time::localtime;

sub date_increment
{

  my $tm = localtime;
  my $year = $tm->year+1900;
  my $month = $tm->mon+1;
  my $day = $tm->mday;
  my $increment = '4'; # Number to increment by

  my @months = qw(Jan=31 Feb=28 Mar=31 Apr=30 May=31 Jun=30 Jul=31 Aug=31 Sep=30 Oct=31 Nov=30 Dec=31);  # Array of months and days
  my ($m, $mTotal) = split(/\=/, $months[$month-1]); # Extracting initial months total days

  $day += $increment; # Adding incremental value to start day
  while ($day > $mTotal) { # Start of incrementing while loop
    $day -= $mTotal; # Subtracts $mTotal from $day to increment month
    $month++; # Increments month
    if ($month > ($#months+1)) { # Checks if $month value is larger than 12
       $month -= ($#months+1); # Subtracts 12 from the value of $month
       $year++; # Increments year value
       }
    ($m, $mTotal) = split(/\=/, $months[$month-1]); # Extracts next months total days
  }

  $day = sprintf("%02s", $day); # Prepends value of $day with 0's if the total digits are &lt; 2
  $month = sprintf("%02s", $month); # Prepends value of $month with 0's if the total digits are &lt;      
  $year = sprintf("%04s", $year); # Prepends value of $year with 0's if the total digits are &lt; 4

  return $year.$month.$day; # new date
}
```
