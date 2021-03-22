---
layout: post
published: true
comments: true
title: VALA21 TechCamp PowerBI Workshop
tags: 'vala, powerbi, power_bi'
---
## VALA21 TechCamp PowerBI Workshop

**Timing**

*   Intro and section 1 - 1 hour
    *   VALA Intro - 10 mins
    *   JK intro slide 5 min
    *   JK into 10 min
    *   Section 1 - 15 min
    *   Pause 5 min
    *   Recap 5
    *   Break 5 mins
    *   _-- 60 minutes_
*   Section 2
    *   Section 2 55 min
    *   Break 5 min
    *   _-- 60 minutes_
*   Section 3 - 55 min
    *   Break 5 min
    *   _-- 60 minutes_
*   Section 4 
    *   40 minutes
    *   Recap 20 min
*   End

Thank you VALA, Melissa etc.

About me

What is PowerBI

What the focus is today



*   80% will be about data, data formats and data structure
    *   Thinking about what’s in the files, how do we connect them, and if there is no current way to join them - how to we make a way, and what are the limitations
*   Why?

Why are we doing this?


*   Librarians know the stories of how your libraries are operating and evolving
*   But if we can’t present data to support our stories and feelings we can’t have useful discussions with senior management etc. about the future of your libraries
*   Give you tools and knowledge so you can have a positive impact for your libraries

How today will run	

Links



*   This document: [https://docs.google.com/document/d/1dm9svZVBQHFKcHEomfFCYZxu2oxx5gyaMWoMbCyfgAg/edit?usp=sharing](https://docs.google.com/document/d/1dm9svZVBQHFKcHEomfFCYZxu2oxx5gyaMWoMbCyfgAg/edit?usp=sharing)
*   Presentation: [https://docs.google.com/presentation/d/1xuzN9Y5mIuyJHhIb0eRZ7SD4qvVUDYKq0zrezU--xcc/edit?usp=sharing](https://docs.google.com/presentation/d/1xuzN9Y5mIuyJHhIb0eRZ7SD4qvVUDYKq0zrezU--xcc/edit?usp=sharing)
*   Files [https://github.com/justinkelly/vala_2021_techcamp_powerbi](https://github.com/justinkelly/vala_2021_techcamp_powerbi)
*   Timer [https://countingdownto.com/countdown-pages/z6-VJBBJ](https://countingdownto.com/countdown-pages/z6-VJBBJ)

**Problem:**

In many cases we in libraries want to do some data analysis on our library data but for 1 of many reasons we can’t - such as



*   The LMS has a limited reporting functionality
*   Only specific people allowed to use the LMS admin or reporting functionality
*   LMS reporting/data is siloed - where you can analyses data separately - but not linked
    *   ie - can view all the bibliographic data - but not join this with the loans or the purchase info
    *   So can;t get a full view of whats happening in your library
*   LMS admins/system people have said that to do reporting you need to do SQL and need permission from IT
    *   SQL is to hard and you have to know to much about that data
    *   IT says you can’t get permission for SQL access and should talk to the LMS admins/reporting - going round in circles not getting anywhere

In many cases we resort to using the only tool we have available (MS Excel) and trying to stitch together lots of different files together (or copy and paste large xls file contents to manual append data)  into one big hot mess 

**Purpose: **

We can overcome the obstacles that are in the way of a librarian from doing the data work required in their role. 

**Scenario**

Can’t get access to useful library reporting systems - but the LMS admins have been nice enough to give you a bunch of seemly random data extracts covering catalogue structure, bibliographic info, loans and purchase data

We know that the data in the different files are related but when you open the files the data formats are all different and the info seems all mixed up

How do we unscramble the mess of data we’ve been given and turn it into a system that we can derive insights and analysis.

When we do the analysis we’ll do some examples using possible roles within a library such as subject librarian, branch librarian and university librarian.

The data we are going to use today is a mix of



*   Real bibliographic info based on Newcastle (UK) Libraries catalogue titles
    *   [https://data.world/datagov-uk/364b7c8f-3917-49bb-aae2-8e504a6fde11](https://data.world/datagov-uk/364b7c8f-3917-49bb-aae2-8e504a6fde11)
*   Dewey Decimal System
    *   [https://github.com/Alacritous/DDS_directory_structure](https://github.com/Alacritous/DDS_directory_structure)
*   Randomised loans, prices and quantity data
*   Selected Melbourne University library locations
*   This data has some limitations that can’t be solved - what do we do in this case?

**What we are going to do:**

Turn a bunch of excel files into a maintainable, sharable and accurate dashboard, that allows you to answer complex queries simply using Power BI.

 The important aspects are not PowerBI and dashboards - 90q% of what we will cover today is data related and used with other tools and environments

Branch librarian for the Baillieu LIbrary - I want to see the change in collection use for my branch



![2021-powerbi-1-branch.png]({{site.baseurl}}/img/2021-powerbi-1-branch.png)




University Librarian



*   I want to look at collection mix over all locations



![2021-powerbi-2-unilib.png]({{site.baseurl}}/img/2021-powerbi-2-unilib.png)




Subject Librarian for Physics at Melbourne University - I want to see the detailed analysis within Physics for each branch



![2021-powerbi-3-subject.png]({{site.baseurl}}/img/2021-powerbi-3-subject.png)




**Files we have**

3 files that describe the structure/hierarchy of the collection

This this example we are using the 3 level of Dewey - but you can also think of similar internal structure that your organisation may use to define collections, parent collections and sub-collection

LIst of branch locations

2 files that list loans, purchase cost ,a holding quantity, per year for each location - 1 file per year

Section 1 - Create the library data hierarchy using the Dewey system is now done

3 files

1st Level (10 lines)


![2021-powerbi-4-dd1.png]({{site.baseurl}}/img/2021-powerbi-4-dd1.png)



2nd Level (100 lines)



![2021-powerbi-5-dd2.png]({{site.baseurl}}/img/2021-powerbi-5-dd2.png)



3rd level (1000 lines)


![2021-powerbi-6-dd3.png]({{site.baseurl}}/img/2021-powerbi-6-dd3.png)



**Section 1**

Import the first Dewey file and create a new column that extracts the first character of the code column. Name this new column “L1”



*   Why and how?

Import the second Dewey file

We need a way to link the 1st dewey file and this one


![2021-powerbi-7-section1-1.png]({{site.baseurl}}/img/2021-powerbi-7-section1-1.png)





![2021-powerbi-8-section1-2.png]({{site.baseurl}}/img/2021-powerbi-8-section1-2.png)



Now we need a way to link the 2nd dewey file to the 3rd one



![2021-powerbi-9-section1-3.png]({{site.baseurl}}/img/2021-powerbi-9-section1-3.png)



Rename the columns

Import the 3rd dewey file



![2021-powerbi-10-section1-4.png]({{site.baseurl}}/img/2021-powerbi-10-section1-4.png)




![2021-powerbi-11-section1-5.png]({{site.baseurl}}/img/2021-powerbi-11-section1-5.png)


Rename the columns

Save the file

Then Close & Apply

![2021-powerbi-11-section1-6.png]({{site.baseurl}}/img/2021-powerbi-11-section1-6.png)




![2021-powerbi-12-section1-7.png]({{site.baseurl}}/img/2021-powerbi-12-section1-7.png)




![2021-powerbi-13-section1-8.png]({{site.baseurl}}/img/2021-powerbi-13-section1-8.png)



Save file

Go into Report view

![2021-powerbi-14-section1-9.png]({{site.baseurl}}/img/2021-powerbi-14-section1-9.png)


From the Visualizations section select Table


![2021-powerbi-15-section1-10.png]({{site.baseurl}}/img/2021-powerbi-15-section1-10.png)



We will now drag into the Table the columns codes and names from the dd1,dd2 and dd3 tables


![2021-powerbi-16-section1-11.png]({{site.baseurl}}/img/2021-powerbi-16-section1-11.png)



![2021-powerbi-17-section1-12.png]({{site.baseurl}}/img/2021-powerbi-17-section1-12.png)



Section 1 - Create the library data hierarchy using the Dewey system is now done

Talk about filters, and level of fitlers 

![2021-powerbi-18-section1-fitlers-13.png]({{site.baseurl}}/img/2021-powerbi-18-section1-fitlers-13.png)


**Section 2  - Import the loans files and link them to the dewey hierarchy**

Import the 2020 loans CSV file

Repeat the process and import the loans 2021 CSV file

Merge the 2 loans files together using Append Queries as New

![2021-powerbi-19-section2-1.png]({{site.baseurl}}/img/2021-powerbi-19-section2-1.png)


Add a new column to format the call number to 3 digit Dewey format



![2021-powerbi-20-section2-2.png]({{site.baseurl}}/img/2021-powerbi-20-section2-2.png)





![2021-powerbi-21-section2-3.png]({{site.baseurl}}/img/2021-powerbi-21-section2-3.png)



Rename the columns and change year to Date format

Save

Close and Apply

Go into the Model view

![2021-powerbi-22-section2-4.png]({{site.baseurl}}/img/2021-powerbi-22-section2-4.png)



And link the loans table to the dd3 table using L3_code in loans with L3_3 in dd3

Go into Report view



<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")


From the Visualizations section select Table



<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")


Drag into the table columns from the loans and dd tables



<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")




<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")




<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")


Discuss filters

Why what we are seeing is important

Can append as many year files as you want

Create	loans by subject and create table



<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")


And Ribbon tables at different Dewey levels

Save

Section 2.5

Create calculations for Total Loans, Loan Ration and Price Per Use



<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.png "image_tooltip")




<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image31.png "image_tooltip")



```
LoanRatio = sum(loans[TotalLoans])/SUM(loans[Copies])

PricePerUse = sum(loans[price])/sum(loans[TotalLoans])

TotalLoans = loans[Location1]+loans[Location2]+loans[Location3]+loans[Location4]+loans[Location5]
```


What right about this

What's wrong about this

What's the problems 

How can we fix the problems



*   Data structure

**Section 3**

Go the the Transform data section - which is within Model



<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image32.png "image_tooltip")


Unpivot locations



<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image33.png "image_tooltip")


Duplicate loans as books table with unique data

Remove price,quantity from loans table

Remove loans from books table




<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image34.png "image_tooltip")


**Section 4**

Add library locations

Create correct link between books and loans



<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image35.png "image_tooltip")





<p id="gdcalert36" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image36.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert37">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image36.png "image_tooltip")
