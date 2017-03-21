--- 
layout: post
title: trac.wsgi for trac_env_parent_dir
published: true
date: 2010-10-21
tags: bzr trac
---

If you have ever had to setup trac for hosting multiple projects using 
the `trac_env_parent_dir` option, you'll know that `mod_wsgi` is the best option for serving. 

I couldn't find a simple .wsgi file that would work for me.

Below is my wsgi file, where `/var/www/trac` the the parent directory where all the trac projects live in. Its super simple but it works :)

I used this in my new trac + bzr hosting service [http://bzr.bz](http://bzr.bz)

``` python
# for more info refer: http://blog.justin.kelly.org.au/tracwsgi-for-tracenvparentdir
# based on the trac.wsgi used for the trac + bzr hosting service http://bzr.bz

import sys
sys.stdout = sys.stderr

import os
os.environ['TRAC_ENV_PARENT_DIR'] = '/var/www/trac'
os.environ['PYTHON_EGG_CACHE'] = ' /usr/share/pyshared'

import trac.web.main

application = trac.web.main.dispatch_request
```

Refer gist for comments [https://gist.github.com/justinkelly/639661](https://gist.github.com/justinkelly/639661)