---
layout: post
published: false
comments: true
title: PowerBI for Librarians 2023
tags: 'vala, powerbi'
---
_This page details the notes for the VALA 2023 TechCamp PowerBI Workshop_

All files are available on GitHub at: 
* [https://github.com/justinkelly/vala_2023_techcamp_powerbi](https://github.com/justinkelly/vala_2023_techcamp_powerbi)


### Introduction

- About me
- What is PowerBI
- [https://bit.ly/vala23_powerbi](https://bit.ly/vala23_powerbi)
- What the focus is today
  - 80% will be about visualistaion and dashboard creation
  
### What is PowerBI and why would I use it?

So we can go from a disparate bunch of Excel and CSV files, to a system that can produce meaningfull dashboards

![2023-vala-dashboard.png]({{site.baseurl}}/img/2023-vala-dashboard.png)

and reports

![2021-powerbi-1-branch.png]({{site.baseurl}}/img/2021-powerbi-1-branch.png)

Discuss difference between Excel and PowerBi and why use 1 or the other


### Why are we doing this?

* Librarians know the stories of how your libraries are operating and evolving
* But if we can’t present data to support our stories and feelings we can’t have useful discussions with senior management etc. about the future of your libraries
* Give you tools and knowledge so you can have a positive impact for your libraries

### Links

* This document: [https://justin.kelly.org.au/vala21-techcamp-powerbi-workshop/](https://justin.kelly.org.au/vala21-techcamp-powerbi-workshop/)
* Presentation: [https://bit.ly/vala23_powerbi_pres](https://bit.ly/vala213_powerbi_pres)
* Files
  * [https://bit.ly/vala21_powerbi](https://bit.ly/vala21_powerbi)
  * [https://github.com/justinkelly/vala_2023_techcamp_powerbi](https://github.com/justinkelly/vala_2023_techcamp_powerbi)

### Problem:

In many cases we in libraries want to do some data analysis on our library data but for 1 of many reasons we can’t - such as:

*   The LMS has a limited reporting functionality
*   Only specific people allowed to use the LMS admin or reporting functionality
*   LMS reporting/data is siloed - where you can analyses data separately - but not linked
    *   ie - can view all the bibliographic data - but not join this with the loans or the purchase info
    *   So can't get a full view of whats happening in your library
*   LMS admins/system people have said that to do reporting you need to do SQL and need permission from IT
    *   SQL is to hard and you have to know to much about that data
    *   IT says you can’t get permission for SQL access and should talk to the LMS admins/reporting - going round in circles not getting anywhere

In many cases we resort to using the only tool we have available (MS Excel) and trying to stitch together lots of different files together (or copy and paste large xls file contents to manual append data)  into one big hot mess 

### Purpose:

We can overcome the obstacles that are in the way of a librarian from doing the data work required in their role. 

### Scenario

Can’t get access to useful library reporting systems - but the LMS admins have been nice enough to give you a bunch of seemly random data extracts covering catalogue structure, bibliographic info, loans and purchase data

We know that the data in the different files are related but when you open the files the data formats are all different and the info seems all mixed up

How do we unscramble the mess of data we’ve been given and turn it into a system that we can derive insights and analysis.

When we do the analysis we’ll do some examples using possible roles within a library such as subject librarian, branch librarian and university librarian.

The data we are going to use today is a mix of

* Real bibliographic info based on Newcastle (UK) Libraries catalogue titles
    * [https://data.world/datagov-uk/364b7c8f-3917-49bb-aae2-8e504a6fde11](https://data.world/datagov-uk/364b7c8f-3917-49bb-aae2-8e504a6fde11)


**What we are going to do:**

Turn an excel/csv file into a maintainable, share-able and accurate dashboard, that allows you to answer complex queries simply using Power BI.

The important aspects are not PowerBI and dashboards - 80% of what we will cover today is data related and can be used with other tools and environments

**Branch librarian for the Baillieu Library**
_want to see the change in collection use for my branch_

![2021-powerbi-1-branch.png]({{site.baseurl}}/img/2021-powerbi-1-branch.png)


**University Librarian**
_I want to look at collection mix over all locations_

![2021-powerbi-2-unilib.png]({{site.baseurl}}/img/2021-powerbi-2-unilib.png)


**Subject Librarian for Physics at Melbourne University**
_I want to see the detailed analysis within Physics for each branch_

![2021-powerbi-3-subject.png]({{site.baseurl}}/img/2021-powerbi-3-subject.png)


**Files we have**

1 file that describe the structure/hierarchy of the collection

This this example we are using the 3 level of Dewey - but you can also think of similar internal structure that your organisation may use to define collections, parent collections and sub-collection

List of branch locations

2 files that list loans, purchase cost, a holding quantity, per year for each location - 1 file per year

## Section 1

_What is PowerBI and intro to it's interface_

![2021-powerbi2-1-home.png]({{site.baseurl}}/img/2021-powerbi2-1-home.png)


### Import the data

Import a CSV file using the `Text/CSV` option from the `Get Data` menu

![2023-vala-import-csv-menu.png]({{site.baseurl}}/img/2023-vala-import-csv-menu.png)


Import the Loans file `libraries-ni-annual-loans-summary-2021-2022.csv` 

![2023-vala-import-csv.png]({{site.baseurl}}/img/2023-vala-import-csv.png)


Review contents and select `Load`

This will load into PowerBI the contents of the `libraries-ni-annual-loans-summary-2021-2022.csv` file, and will create a table in PowerBI called `libraries-ni-annual-loans-summary-2021-2022`

![2023-vala-import-csv-load.png]({{site.baseurl}}/img/2023-vala-import-csv-load.png)

Save the file

If you've managed to get this far - congratualtions - you've jjust completed one of the hardest probably - jsut getting the data and imported into PowerBI

## Section 2  
_Create some reports_


Go into `Report` view

![2021-powerbi-14-section1-9.png]({{site.baseurl}}/img/2021-powerbi-14-section1-9.png)





![2023-power-bi-visualizations.png]({{site.baseurl}}/img/2023-power-bi-visualizations.png)



Save the file

Then Close & Apply

![2021-powerbi-11-section1-6.png]({{site.baseurl}}/img/2021-powerbi-11-section1-6.png)




From the Visualizations section select `Table`


![2021-powerbi-15-section1-10.png]({{site.baseurl}}/img/2021-powerbi-15-section1-10.png)


We will now drag into the Table the columns codes and names from the dewey table

![2021-powerbi-17-section1-12.png]({{site.baseurl}}/img/2021-powerbi-17-section1-12.png)


Section 1 - Create the library data hierarchy using the Dewey system is now done


## Section 2  
_Import the loans files and link them to the dewey hierarchy_

Import the 2020 loans xlsx file

![2021-powerbi2-2-import-2020.png]({{site.baseurl}}/img/2021-powerbi2-2-import-2020.png)

Name the new table `2020`

Repeat the process and import the loans 2021 xlsx file

Name the new table `2021`

![2021-powerbi2-3-loan_tables.png]({{site.baseurl}}/img/2021-powerbi2-3-loan_tables.png)

_Discuss what happened, file content not changed, what will happen next and why_


## Section 3
_Merging files - one of the higlight featuers of PowerBI_

Discuss why this is key and very important

Merge the 2 loans files together using `Append Queries as New`

![2021-powerbi-19-section2-1.png]({{site.baseurl}}/img/2021-powerbi-19-section2-1.png)

![2021-powerbi2-2-append.png]({{site.baseurl}}/img/2021-powerbi2-2-append.png)

Name the new table `loans` and go into the Transforn Data section


## Section 4
_Data programming_

Add a new column to format the call number to 3 digit Dewey format, using `Add Column` and then `Columns from examples`

![2021-powerbi2-2-add_example.png]({{site.baseurl}}/img/2021-powerbi2-2-add_example.png)

![2021-powerbi2-2-loan_fields.png]({{site.baseurl}}/img/2021-powerbi2-2-loan_fields.png)

_Discuss what happened and why this is important!_

Rename the new columns `dewey_code`

_Discuss why_

Rename any other columns and change `year` to Date format
* _Date needs to be changed from a Number to Text and then to Date_

Right click on `year` and slect `Date` from the `Change Type` menu

![2021-powerbi2-2-date_fields.png]({{site.baseurl}}/img/2021-powerbi2-2-date_fields.png)

_Discuss why_

Save

Close and Apply


## Section 5
_Link the files_

_Discuss what we are about to do and why, and how this is diffrerent from Excel_

Go into the `Model` section

![2021-powerbi-22-section2-4.png]({{site.baseurl}}/img/2021-powerbi-22-section2-4.png)

And link the `loans` table to the `dewey` table using `dewey_code` field in both tables. Noting that if we have namesd the fielkds correctly PowerBI may have already done this for us.

![2021-powerbi2-3-loans-link.png]({{site.baseurl}}/img/2021-powerbi2-3-loans-link.png)

Make the `2020` and `2021` tables hidden in the reports

_discuss how and why_

![2021-powerbi2-2-hides.png]({{site.baseurl}}/img/2021-powerbi2-2-hides.png)

_Discuss what just happened and again why it's important_

Save

## Section 6
_Visualisation_

Replicate each of the 3 graphs from the intro/presentation

Go into `Report` view

![2021-powerbi-23-section2-5.png]({{site.baseurl}}/img/2021-powerbi-23-section2-5.png)

From the `Visualizations` section select `Table`

Discuss filters and level of fitlers 

![2021-powerbi-18-section1-fitlers-13.png]({{site.baseurl}}/img/2021-powerbi-18-section1-fitlers-13.png)

Discuss grouping, what and why and possible better solution in step 8

Right click on Location in the fields section and select New Grouping

![2021-powerbi-2-section-6-grouping.png]({{site.baseurl}}/img/2021-powerbi-2-section-6-grouping.png)


## Section 7
_Calculations_

_This step is optional - can be ignored if taking to long or to hard_

Add calculations for turnover and cost per use

Create calculations for Total Loans, Loan Ration and Price Per Use

![2021-powerbi-29-section2-11.png]({{site.baseurl}}/img/2021-powerbi-29-section2-11.png)


![2021-powerbi-30-section2-12.png]({{site.baseurl}}/img/2021-powerbi-30-section2-12.png)


```
Turnover = sum(loans[Loans])/SUM(loans[Copies])
```

```
PricePerUse = sum(loans[Price])/sum(loans[Loans])
```


Questions

- What right about this
- What's wrong about this
- What's the problems 
- How can we fix the problems
- Delete calculations


Do data visualistation and discuss limitation of CostPU and Turnover given underlying data issues

## Section 8
_Add library locations_

_This step is optional - can be ignored if taking to long or to hard_

Import the `libraries.csv` file

Create a new column that we will use to link locations to loans

![2021-powerbi-2-section-8-location.png]({{site.baseurl}}/img/2021-powerbi-2-section-8-location.png)

In the model view link the libraries to the loans

![2021-powerbi2-3-libraries_model.png]({{site.baseurl}}/img/2021-powerbi2-3-libraries_model.png)
