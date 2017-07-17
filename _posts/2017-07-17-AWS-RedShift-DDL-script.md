---
layout: post
published: true
title: AWS RedShift DDL SQL script
comments: true
tags: aws redshift postgres
---

If you are using AWS RedShift and a sql client that doesn't auto show table details/description you can use the below script and output the full metdata for a table

Just replace `INSERT_TABLENAME_HERE` and `INSERT_SCHEMA_NAME_HERE` with the scheme and table name

{% highlight sql linenos %}
SELECT DISTINCT n.nspname AS schemaname
 ,c.relname AS tablename
 ,a.attname AS COLUMN
 ,a.attnum AS column_position
 ,pg_catalog.format_type(a.atttypid, a.atttypmod) AS TYPE
 ,pg_catalog.format_encoding(a.attencodingtype) AS encoding
  ,a.attisdistkey AS distkey
 ,a.attsortkeyord AS sortkey
 ,a.attnotnull AS notnull
 ,a.attencodingtype AS compression
 ,con.conkey AS primary_key_column_ids
 ,con.contype AS con_type
FROM pg_catalog.pg_namespace n
 ,pg_catalog.pg_class c
 ,pg_catalog.pg_attribute a
 ,pg_constraint con
 ,pg_catalog.pg_stats stats
WHERE n.oid = c.relnamespace
 AND c.oid = a.attrelid
 AND a.attnum > 0
 AND c.relname NOT LIKE '%pkey'
 AND lower(c.relname) = 'INSERT_TABLENAME_HERE'
 AND n.nspname = 'INSERT_SCHEME_NAME_HERE'
 AND c.oid = con.conrelid(+)
ORDER BY A.ATTNUM
;
{% endhighlight %}

Here is an example of the output

![RedShift DDL SQL](/img/2017-07-17-RedShift-DDL.PNG)
