---
layout: post
title: "Connecting to an OpenVPN (untangle) network from linux: How to"
published: true
tags: 
- linux
- vpn
- openvpn
- untangle
---
Just connected to an OpenVPN (untangle) network from linux and it was super easy (way easier than a normal cisco vpn anyway)

All you have to do is:

install the openvpn client for your distro and  get your config files from the network admin 

* the files should look somethign like below
* replace `xyz-co` with and `you` with your details

```
xyz-co.conf
xyz-co.ovpn
untangle-vpn/
untangle-vpn/xyz-co-ca.crt
untangle-vpn/xyz-co-you.crt
untangle-vpn/xyz-co-you.key
```

copy the above files into your `/etc/openvpn` directory, then connect using the below command

```
sudo openvpn /etc/openvpn/xyz-co.conf
```

all done - too easy
