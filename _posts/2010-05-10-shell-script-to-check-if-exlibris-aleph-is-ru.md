--- 
layout: post
title: shell script to check if ExLibris Aleph is running OK
published: true
date: 2010-05-10
tags: 
- aleph
- bash
- exlibris
- linux
posterous_url: http://blog.justin.kelly.org.au/shell-script-to-check-if-exlibris-aleph-is-ru
posterous_slug: shell-script-to-check-if-exlibris-aleph-is-ru
---
If you have to admin Aleph from ExLibris you may be wondering why there is minimal tools to help you make sure its all running ok

Below is a simple shell script that checks various 'ue_' process (PC server, publishing, etc..) and emails if they are down

Add this to your crontab to run each 15 minutes or so

Note:

- replace the email address with your email address
- replace LIB with your 3 character library code
- add/remove ue_ sections as you need

`aleph.sh`
{% highlight bash %}
#!/bin/bash
 
SUBJECT='Aleph: alert'
TO='youremailaddress@you.com'
 
if [[ $ps =~ "ue_21_a_LIB30" ]]
then
        echo LIB30 ue_21 all OK
else
        message="LIB30 ue_21 is not running
"
fi
 
if [[ $ps =~ "ue_21_a_LIB01" ]]
then
        echo LIB01 ue_21 all OK
else
        message="${message}
LIB01 ue_21 is not running"
fi
 
 
if [[ $ps =~ "ue_08_a_LIB01" ]]
then
        echo LIB01 ue_08 all OK
else
        message="${message}
LIB01 ue_08 is not running"
fi
 
if [[ $ps =~ "ue_08_a_LIB10" ]]
then
        echo LIB10 ue_08  all OK
else
        message="${message}
LIB10 ue_08 is not running"
fi
 
if [[ $ps =~ "ue_06_a_LIB50" ]]
then
        echo LIB50 ue_06  all OK
else
        message="${message}
LIB50 ue_06 is not running"
fi
 
if [[ $ps =~ "-d_/exlibris/aleph/u20_1/alephe/apache" ]]
then
        echo Apache looks OK
else
        message="${message}
Apache doesn't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/pc_server" ]]
then
        echo PC_Server looks  all OK
else
        message="${message}
PC_Server doen't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/www_server" ]]
then
        echo www_server looks all OK
else
        message="${message}
wwww_server doens't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/sip2_server" ]]
then
        echo SIP2 looks OK
else
        message="${message}
SIP2 doesn't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/oclc_server" ]]
then
        echo OCLC server looks OK
else
        message="${message}
OCLC server doesn't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/ncip_server" ]]
then
        echo NCIP server looks OK
else
        message="${message}
NCIP server doesn't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/sru_server" ]]
then
        echo SRU server looks OK
else
        message="${message}
SRU server doesn't look to be running"
fi
 
if [[ $ps =~ "-f_/exlibris/aleph/a20_1/aleph/proc/z39_server" ]]
then
        echo Z39 server looks OK
else
        message="${message}
Z39 server doesn't look to be running"
fi
 
if [[ $ps =~ "ue_01_a_LIB01.a20_1" ]]
then
        echo LIB01 indexing looks OK
else
        message="${message}
LIB01 indexing doesn't look to be running"
fi
 
if [[ $ps =~ "ue_01_a_LIB10.a20_1" ]]
then
        echo LIB10 indexing looks OK
else
        message="${message}
LIB10 indexing doesn't look to be running"
fi
 
if [[ $ps =~ "ue_01_a_LIB30.a20_1" ]]
then
        echo LIB30 indexing looks OK
else
        message="${message}
LIB30 indexing doesn't look to be running"
fi
 
if [[ -n $message ]]
then
        echo $message
        /bin/mail -s "$SUBJECT" "$TO" <<EOM
        $message
EOM
else
        echo "No email needs to be sent - all working OK"
fi
{% endhighlight %}
