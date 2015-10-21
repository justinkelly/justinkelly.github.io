--- 
layout: post
title: "MySQL script: drop all tables in a db and import a .sql file"
published: true
date: 2009-09-21
tags: 
- mysql
- shell
- simple invoices
---

Used to refresh SimpleInvoices.org/demo each hour

{% highlight bash %}
#!/bin/bash

MUSER="-- Insert Db username here --"
MPASS="-- Insert Db password here --"
MDB="-- Insert Db name here --"
 FILE="/home/user/path/to/your/import_file.sql"
 
# Detect paths
MYSQL=$(which mysql)
AWK=$(which awk)
GREP=$(which grep)
 
TABLES=$($MYSQL -u $MUSER -p$MPASS $MDB -e 'show tables' | $AWK '{ print $1}' | $GREP -v 'Tables' )
  
for t in $TABLES
do
    echo "Deleting $t table from $MDB database..."
    $MYSQL -u $MUSER -p $MPASS $MDB -e "drop table $t"
done

cat $FILE | mysql -u $MUSER -p$MPASS $MDB
echo "Sql imported"
{% endhighlight %}
