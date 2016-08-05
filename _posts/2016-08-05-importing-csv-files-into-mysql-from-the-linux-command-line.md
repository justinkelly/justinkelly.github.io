---
layout: blog
published: false
title: Importing CSV files into MySQL from the Linux command line
date: '2016-08-05 14:12'
comments: true
tags: 'mysql, linux'
---
Every so often I need to bulk import csv type files into MySQL and I forgot the process.  Here are the steps for a simple csv into MySQL.

Assuming you have a csv file with contents like below (with no headings line)

```bash
234245,0bMHxBO76w5T23t
564565,0BzRf05nA0lrn2G
234233,0eHhkxexkLDkVRz
124235,0Ezp93248igtsYu
12314,0I1d96ujWqrqqU6
```
Ensure the `mysql-client` is installed and use the `mysqlimport` command. Refer below for a detailed example. 

```bash
mysqlimport  --fields-terminated-by=, --verbose --local -u root -p mysql-database-name mysql-table-name.csv 
```
where 

 * `--fields-terminated-by` is the delimited
 * `--local` indicates that the csv or file ir
 * `-u` is the MySQL user
 * `-p` prompts for the MySQL password
 * `mysql-database-name` replace this with the name of your database
 * `mysql-table-name` the name of the csv file needs to match the target MySQL table name, the extension doesn't matter. This can also include the file path at the start ie. `/var/www/session.csv`
 
if you csv has a headings row (such as example below) you can added the option `--ignore-lines=1` to skip that line 

```bash
user_id, session_id
234245,0bMHxBO76w5T23t
564565,0BzRf05nA0lrn2G
234233,0eHhkxexkLDkVRz
124235,0Ezp93248igtsYu
12314,0I1d96ujWqrqqU6
```

If the import works you'll see a similar output to below, the number inf `Records` should match the lines in the csv, just watch for the numbers in `Skipped` and `Warning` to ensure all rows were imported - these should be 0

```bash
Enter password: 
Connecting to localhost
Selecting database users
Loading data from LOCAL file: session.csv into session
users.session: Records: 58918  Deleted: 0  Skipped: 0  Warnings: 0
Disconnecting from localhost
```