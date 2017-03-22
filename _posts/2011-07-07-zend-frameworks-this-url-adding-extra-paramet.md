---
layout: post
title: Zend Frameworks $this->url() adding extra parameters - how to fix
published: true
tags: php zend-framework
---
what i was doing

``` php
echo $this->url(array('controller'='pages','action'='about'));
```

the correct way for zend framework $this->url links</p>

``` php
echo $this->url(array('controller'='pages','action'='about'),null,true);
```

thanks stackoverflow [http://stackoverflow.com/questions/4215295/zend-framework-url-view-helper-adds-id-by-default](http://stackoverflow.com/questions/4215295/zend-framework-url-view-helper-adds-id-by-default)
