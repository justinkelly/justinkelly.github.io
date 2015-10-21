--- 
layout: post
title: "Oracle: How to auto execute a sql from commandline and save output to file"
published: true
date: 2009-10-12
tags: 
- oracle
- shell
posterous_url: http://blog.justin.kelly.org.au/oracle-how-to-auto-execute-a-sql-from-command
posterous_slug: oracle-how-to-auto-execute-a-sql-from-command
---
### 1. Create a .sql file using the below template

- set the output file in the first SPOOL command
- add your query in between the SPOOL sections

```
set echo off
set newpage 0
set pagesize 0
set space 0
 set feedback off
set trimspool on
set heading off
set linesize 555
SPOOL /path/to/your/output/file.txt
select ... 'replace this line with your query'&nbsp; ;
SPOOL OFF
quit
```

### 2. Create a simple shell script

```
#!/bin/bash
sqlplus oracle_user/password @/path/to/your/sql_file.sql
```

### 3. chmod the script

```
chmod +x oracle_sql.sh
```

### 4. 

Also to get sql*plus working you may need to set a few environmental variables

```
setenv ORACLE_HOME ..
setenv ORACLE_SID ..
setenv ORACLE_OWNER ..
setenv ORACLE_VERSION ..
setenv ORACLE_CONF ..
setenv ORACLE_BASE ..
setenv TNS_PORT ..
setenv ORACLE_ALERT_LOG ..
setenv TEMPORARY_TS TEMP
setenv TWO_TASK ..
setenv ORA_LIB ..
```

### 5. 

then just add the oracle_sql.sh to your cron

### 6. 

done
