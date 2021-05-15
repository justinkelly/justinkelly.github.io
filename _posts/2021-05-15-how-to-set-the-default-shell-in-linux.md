---
layout: post
published: true
comments: true
title: How to set the default shell in Linux
tags: linux
---
One thing I always forget when logging into a new Linux server is is how to set the default shell.

The below command sets the default to bash

```chsh -s /bin/bash```

From the man page for chsh

> The chsh command changes the user login shell. This determines the name of the users initial login command. A normal user may only change the login shell for her own account, the superuser may change the login shell for any account

Replace `/bin/bash` with the path to your preferred shell
