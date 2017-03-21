--- 
layout: post
title: "Install Git in your home directory :: How to"
published: true
date: 2012-01-24
tags: 
- version control
- git
- linux
---
<p>If you every need to install Git on a server but don&rsquo;t have root access, follow the below steps to install Git in your home directory</p>

<p>check that you can run gcc &ndash; if you get errors then you got to figure something else out</p>

<div class="CodeRay">
  <div class="code"><pre>gcc --version</pre></div>
</div>


<p>prep your home folder</p>

<div class="CodeRay">
  <div class="code"><pre>mkdir ~/src
cd ~/src</pre></div>
</div>


<p>make the ~/opt directory &ndash; this is where we will install git into</p>

<div class="CodeRay">
  <div class="code"><pre>mkdir ~/opt</pre></div>
</div>


<p>Get the git source from google code 1.7.8.4 is the latest at the moment and untar</p>

<div class="CodeRay">
  <div class="code"><pre>wget http://git-core.googlecode.com/files/git-1.7.8.4.tar.gz
tar -xvzf git-1.7.8.4.tar.gz
cd git-1.7.8.4</pre></div>
</div>


<p>run ./configure and tell it to use ~/opt</p>

<div class="CodeRay">
  <div class="code"><pre>./configure --prefix=$HOME/opt</pre></div>
</div>


<p>now do the install</p>

<div class="CodeRay">
  <div class="code"><pre>make install</pre></div>
</div>


<p>check git is happy</p>

<div class="CodeRay">
  <div class="code"><pre>~/opt/bin/git --version</pre></div>
</div>


<p>If it prints out &lsquo;git version 1.7.8.4&rsquo; then its all good to go &ndash; git is now installed in your home folder</p>