--- 
layout: post
title: running dropbox on centos in a headless/vps setup
published: true
date: 2009-09-16
tags: 
- centos
- dropbox
- linux
- vps
posterous_url: http://blog.justin.kelly.org.au/running-dropbox-on-centos-in-a-headlessvps-se
posterous_slug: running-dropbox-on-centos-in-a-headlessvps-se
---
```
wget -O dropbox.tar.gz http://www.getdropbox.com/download?plat=lnx.x86
tar zxof dropbox.tar.gz
wget http://dl.getdropbox.com/u/6995/dbmakefakelib.py
wget http://dl.getdropbox.com/u/6995/dbreadconfig.py
python dbmakefakelib.py
```

no gcc so install it

```
sudo yum install gcc
python dbmakefakelib.py
```

you should get the below meeages:

```
dropboxd ran for 15 seconds without quitting - success?
```

just control-c out of this and continue

```
python dbreadconfig.py
```

python errors - need to manully open sqlite


```
cd .dropbox
sqlite3 dropbox.db
sqlite< .dump config
```

paste the 'host_id' into [http://www.opinionatedgeek.com/dotnet/tools/Base64Decode/](http://www.opinionatedgeek.com/dotnet/tools/Base64Decode/)

paste the result ( the stuff after the 'V' ) at the end of this url
( https://www.getdropbox.com/cli_link?host_id= ) and enter in your browser 

you'll be asked to log into dropbox - this should link your account to your server

```
mkdir ~/Dropbox
```

To start drop box just run

```
~/.dropbox-dist/dropboxd &
```


If you want to run dropbox as a services

```
sudo vi /etc/init.d/dropbox
```

and paste in the below code 
_note: change "user1 user2" to the user(s) on the server running dropbox_

```
# chkconfig: 345 85 15
# description: Startup script for dropbox daemon
#
# processname: dropboxd
# pidfile: /var/run/dropbox.pid
#
# Source function library.
. /etc/rc.d/init.d/functions

DROPBOX_USERS="user1 user2"

prog=dropboxd
lockfile=${LOCKFILE-/var/lock/subsys/dropbox}
RETVAL=0

start() {
        echo -n $"Starting $prog"
         for dbuser in $DROPBOX_USERS; do
            daemon --user $dbuser /bin/sh -c "/home/$dbuser/.dropbox-dist/dropboxd&amp;"
        done

        RETVAL=$?
        echo
        [ $RETVAL = 0 ] &amp;&amp; touch ${lockfile}
         return $RETVAL
}

stop() {
        echo -n $"Stopping $prog"
    for dbuser in $DROPBOX_USERS; do
        killproc /home/$dbuser/.dropbox-dist/dropboxd
    done
        RETVAL=$?
         echo
        [ $RETVAL = 0 ] &amp;&amp; rm -f ${lockfile} ${pidfile}
}

# See how we were called.
case "$1" in
  start)
        start
        ;;
  stop)
        stop
        ;;
   restart)
        stop
        start
        ;;
  *)
        echo $"Usage: $prog {start|stop|restart}"
        RETVAL=3
esac

exit $RETVAL
```

```
sudo chmod +x /etc/init.d/dropbox
sudo /sbin/chkconfig --add dropbox
sudo chmod 755 /etc/init.d/dropbox
```

to start dropbox

```
/etc/init.d/dropbox start
```
