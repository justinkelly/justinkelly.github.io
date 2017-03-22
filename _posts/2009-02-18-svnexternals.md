---
layout: post
title: svn:externals
published: true
tags: 
- svn
- version control
---
thanks to ruflin.com for adding svn:externals into Simple Invoices<br />- the simplest way to keep the Zend Framework up to date

```
svn propedit svn:externals library
```

```
Zend http://framework.zend.com/svn/framework/standard/tags/release-1.7.5/library/Zend/
```

now once theres a new zf release we want just edit the svn props and its all good :)


[http://svnbook.red-bean.com/en/1.0/ch07s03.html](http://svnbook.red-bean.com/en/1.0/ch07s03.html)
