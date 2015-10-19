--- 
layout: post
title: VPS + OpenDNS
published: true
date: 2009-09-02
categories: 
- vps
posterous_url: http://blog.justin.kelly.org.au/vps-opendns
posterous_slug: vps-opendns
---
just setup a vps with [fsckvps.com](fsckvps.com) and there was no nameserver in resolve.conf -- thus yum wasn't working
couldn't find any info on there site so used the ultra reliable 
[OpenDNS](http://www.opendns.com) and everything was all happy again

Just edit /etc/resolv.conf and set the resolvers as below

    nameserver 208.67.222.222
    nameserver 208.67.220.220
