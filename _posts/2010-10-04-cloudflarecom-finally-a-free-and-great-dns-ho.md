---
layout: post
title: cloudflare.com - finally a free and great DNS host!!
published: true
tags: 
- dns
- google apps
- srv
---
![](/img/cloudflare.png)

Just moved all my domains DNS over to [CloudFlare.com](http://cloudflare.com) -  finally a free and great DNS host!!
 
Not only does cloudflare provide dns hosting but they also provide free CDN services and also free protection from web spammers

Note: Cloudflare is from the guys behind [projecthoneypot.org](http://projecthoneypot.org), so they really know web spam
 
Only a couple of minor issues:

* Cloudflare doesn't auto import your google apps srv records
* Creating srv records via the web dns editor is painful
* Easiest option is to just download your zone file from cloudflare and add in the below records for SRV

_Google Apps SRV records :: DNS_

``` yaml
_jabber._tcp.@  1   IN  SRV 5   0   5269    xmpp-server.l.google.com
_jabber._tcp.@  1   IN  SRV 20  0   5269    xmpp-server4.l.google.com
_jabber._tcp.@  1   IN  SRV 20  0   5269    xmpp-server2.l.google.com
_jabber._tcp.@  1   IN  SRV 20  0   5269    xmpp-server1.l.google.com
_jabber._tcp.@  1   IN  SRV 20  0   5269    xmpp-server3.l.google.com
_xmpp-client._tcp.@ 1   IN  SRV 5   0   5222    talk.l.google.com
_xmpp-client._tcp.@ 1   IN  SRV 50  0   5222    talk4.l.google.com
_xmpp-client._tcp.@ 1   IN  SRV 5   0   5222    talk1.l.google.com
_xmpp-client._tcp.@ 1   IN  SRV 20  0   5222    talk3.l.google.com
_xmpp-client._tcp.@ 1   IN  SRV 20  0   5222    talk2.l.google.com
_xmpp-server._tcp.@ 1   IN  SRV 20  0   5269    xmpp-server4.l.google.com
_xmpp-server._tcp.@ 1   IN  SRV 5   0   5269    xmpp-server.l.google.com
_xmpp-server._tcp.@ 1   IN  SRV 20  0   5269    xmpp-server2.l.google.com
_xmpp-server._tcp.@ 1   IN  SRV 20  0   5269    xmpp-server1.l.google.com
_xmpp-server._tcp.@ 1   IN  SRV 20  0   5269    xmpp-server3.l.google.co
```

* There need to be an easy way to create all the required dns records for Google Apps - just as editdns does
 
thanks @cloudflare !!!