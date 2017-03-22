--- 
layout: post
title: Can anyone make this sql query faster
published: true
tags: 
- mysql
- simple invoices
---
Hi Guys,

we've got an old sql query that powers the 'Manage Customers' page thats slow as a dog to run.
if anyone has a few minutes to review and rewrite this query so it run faster it would be greatly appreciated.

theres the sql

```
SELECT
    c.id as CID,
    c.name as name,
    (
        SELECT (CASE  WHEN c.enabled = 0 THEN 'Disabled' ELSE 'Enabled' END )
     ) AS enabled,
    (
        SELECT
            coalesce(sum(ii.total),  0) AS total
        FROM
            si_invoice_items ii INNER JOIN
            si_invoices iv ON (iv.id = ii.invoice_id)
         WHERE
        iv.customer_id  = CID 
    ) as customer_total,
    (
        SELECT
            coalesce(sum(ap.ac_amount), 0) AS amount
        FROM
            si_payment ap INNER JOIN
            si_invoices iv ON (iv.id = ap.ac_inv_id)
         WHERE
            iv.customer_id = CID
    ) AS paid,
    ( 
        select customer_total - paid 
    ) AS owing
FROM
    si_customers c
WHERE 
    c.domain_id = '1'
ORDER BY
     name asc;
```

just post your improve query in the [Simple Invoices forum](http://simpleinvoices.org/forum/discussion/864/can-anyone-make-this-sql-query-faster/)

Cheers

Justin
