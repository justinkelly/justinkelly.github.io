---
layout: post
title: "Install Git in your home directory :: How to"
published: true
tags: version-control git linux
---
If you every need to install Git on a server but don't have root access, 
follow the below steps to install Git in your home directory<

Check that you can run gcc &ndash; if you get errors then you got to figure something else out

``` shell
gcc --version
```

Pprep your home folder

``` shell
mkdir ~/src
cd ~/src
```

Mmake the ~`/opt` directory &ndash; this is where we will install git into


``` shell
mkdir ~/opt
```

Get the git source from google code 1.7.8.4 is the latest at the moment and untar

``` shell
wget http://git-core.googlecode.com/files/git-1.7.8.4.tar.gz
tar -xvzf git-1.7.8.4.tar.gz
cd git-1.7.8.4
```

Rrun `./configure` and tell it to use `~/opt`

``` shell
./configure --prefix=$HOME/opt
```

Now do the install

``` shell
make install
```

Check git is happy

``` shell
~/opt/bin/git --version
```

If it prints out &lsquo;git version 1.7.8.4&rsquo; 
then its all good to go &ndash; git is now installed in your home folder