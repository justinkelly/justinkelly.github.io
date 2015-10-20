---
layout: post
title: "How to ignore changes in tracked files with Git"
date: 2012-11-13 00:13
comments: true
tags: git
---

If you've added files into your GIT repository, then realised you don't want 
changes to these files tracked.( *ie. log files, cache directories etc.* )
adding the tracked files to .gitignore won’t work.

GIT will still track the changes and commit the file if you use the `-a` parameter.

To untracked file changes use the below command:

    git update-index --assume-unchanged <file>
    
If you wanna start tracking changes again run the following command:

    git update-index --no-assume-unchanged <file>

For more info refer the [Git manual on this topic](http://www.kernel.org/pub/software/scm/git/docs/git-update-index.html)
