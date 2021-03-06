---
layout: post
published: true
comments: true
title: AWS RedShift - How to create a schema and grant access
tags: aws redshift postgres
---
If you are new to the AWS RedShift database and need to create schemas and grant access you can use the below SQL to manage this process

## Schema creation 

To create a schema in your existing database run the below SQL and replace

* `my_schema_name` with your schema name

``` sql
CREATE SCHEMA my_schema_name; 
```

If you need to adjust the ownership of the schema to another user - such as a specific db admin user run the below SQL and replace

* `my_schema_name` with your schema name
* `my_user_name` with the name of the user that needs access

``` sql
ALTER SCHEMA my_schema_name OWNER TO my_user_name;
```

## Permissions

Now to allow only `SELECT` access to the new `my_schema_name` schema to the user `my_user_name` run the below SQL and replace

* `my_schema_name` with your schema name
* `my_user_name` with the name of the user that needs access

``` sql
GRANT USAGE ON SCHEMA my_schema_name TO my_user_name;
GRANT SELECT ON ALL TABLES IN SCHEMA my_schema_name TO my_user_name;
ALTER DEFAULT PRIVILEGES IN SCHEMA my_schema_name GRANT SELECT ON TABLES TO my_user_name;
```

To allow `ALL` access to the new `my_schema_name` schema to the user `my_user_name` run the below SQL and replace

* `my_schema_name` with your schema name
* `my_user_name` with the name of the user that needs access

``` sql
GRANT ALL ON SCHEMA my_schema_name TO my_user_name;
GRANT ALL ON ALL TABLES IN SCHEMA my_schema_name TO my_user_name;
ALTER DEFAULT PRIVILEGES IN SCHEMA my_schema_name GRANT ALL ON TABLES TO my_user_name;
```

If the user `my_user_name` does not already have access rights to the database that the schema belongs to run the below SQL and replace

* `my_databasea_name` with your database name
* `my_user_name` with the name of the user that needs access

``` sql
GRANT CONNECT ON DATABASE my_database_name TO my_user_name;
```

## Group access

To assign permissions to a user group rather than individual user in RedShift change the abover queriers from `TO my_user_name` to `TO GROUP my_user_group`.  Replacing `my_user_group` with the name of your RedShift user group.


