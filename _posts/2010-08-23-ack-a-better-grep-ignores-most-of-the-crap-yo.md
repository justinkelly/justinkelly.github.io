--- 
layout: post
title: ack = a better grep "ignores most of the crap you don't want to search"
published: true
tags: linux
---
If you've ever use grep to search a svn directory you'll know the issues re .svn folders, easiest solution is to use [ack](http://betterthangrep.com)

### Why
> ack is a tool like grep, optimized for programmers
_Andy Lester http://betterthangrep.com_


### How to install

``` shell
curl http://betterthangrep.com/ack-standalone >  ~/bin/ack &&; chmod 0755 !#:3
```

### Top reasons to use ack instead of grep


 * It's blazingly fast because it only searches the stuff you want searched.
 * ack is pure Perl, so it runs on Windows just fine.
 * The standalone version uses no non-standard modules, so you can put it in your ~/bin without fear.
 * Searches recursively through directories by default, while ignoring .svn, CVS and other VCS directories.
 * ack ignores most of the crap you don't want to search
   * VCS directories
   * blib, the Perl build directory
   * backup files like foo~ and #foo#
   * binary files, core dumps, etc
 * Ignoring .svn directories means that ack is faster than grep for searching through trees
 * Lets you specify file types to search, as in --perl or --nohtml
   * `ack -f --perl > all-perl-files`
 * Color highlighting of search results

### Examples

Which would you rather type?

``` shell
$ grep pattern $(find . -type f | grep -v '\.svn')
```

or

``` shell
$ ack pattern
```

also

``` shell
grep pattern $(find . -name '*.pl' -or -name '*.pm' -or -name '*.pod' | grep -v .svn)
```

versus

``` shell
ack --perl pattern
```

* Note that ack's `--perl` also checks the shebang lines of files without suffixes, which the find command will not
