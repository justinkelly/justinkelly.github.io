--- 
layout: post
title: Simple MySQL db refresh script
published: true
date: 2011-12-29
tags: bash linux mysql
---

If you need to drop the contents of a MySQL database and reimport base data alot (such as a webapp demo or development site)
below is a very simple script to make your life easier

Just edit the configs, create the import.sql add it to your cron jobs 

``` shell
#!/bin/bash

MUSER="MYSQL_USER"
MPASS="MYSQL_PASSWORD"
MDB="MYSQL_DB"
FILE="/path/to/sql/to/import.sql"

# Detect paths
MYSQL=$(which mysql)
AWK=$(which awk)
GREP=$(which grep)

TABLES=$($MYSQL -u $MUSER -p$MPASS $MDB -e 'show tables' | $AWK '{ print $1}' | $GREP -v '^Tables' )

for t in $TABLES
do
        echo "Deleting $t table from $MDB database..."
        $MYSQL -u $MUSER -p$MPASS $MDB -e "drop table $t"
done

cat $FILE | mysql -u $MUSER -p$MPASS $MDB
echo "Sql imported"
```

Refer gist for comments [https://gist.github.com/justinkelly/1537596](https://gist.github.com/justinkelly/1537596)