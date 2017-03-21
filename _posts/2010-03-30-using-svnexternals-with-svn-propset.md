--- 
layout: post
title: "using svn:externals with svn propset "
published: true
date: 2010-03-30
tags: 
- svn
---
if you can't use svn propedit (ie. your using bespin) you can use svn propset

    svn propset svn:externals 'Zend http://framework.zend.com/svn/framework/standard/tags/release-1.10.0/library/Zend/' library

the above make the folder 'Zend' within the folder 'library' reference the zend svn repo

note: refer this post for info on `svn:externals` with svn propedit [http://blog.justin.kelly.org.au/svnexternals](http://blog.justin.kelly.org.au/svnexternals)
