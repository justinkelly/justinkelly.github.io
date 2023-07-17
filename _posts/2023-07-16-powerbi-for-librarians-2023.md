---
layout: post
published: true
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
- What the focus is today
  - 80% will be about visualistaion and dashboard creation
- Links
  - Files that will be used in the workshop: bit.ly/vala23-powerbi-files
  - Detailed notes for the workshop: bit.ly/vala23-powerbi-notes
  - Slides: bit.ly/vala23-powerbi-slides
  
### What is PowerBI and why would I use it?

So we can go from Excel and CSV files, to a system that can produce meaningfull dashboards and reports, can used to to analyse data, create insights and are easily shareable.

![2023-vala-dashboard.png]({{site.baseurl}}/img/2023-vala-dashboard.png)

![2021-powerbi-1-branch.png]({{site.baseurl}}/img/2021-powerbi-1-branch.png)

Discuss difference between Excel and PowerBi and why use 1 or the other


### Why are we doing this?

* Why PowerBI?
  * Desktop is free, and its 
  * Microsoft makes available the professional and enterprise verions of PowerBI very cheapely to public institutions - meaning most universities will already have PowerBI available for library staff to use - or atleast request access to
* Why visualisation?
  * Librarians know the stories of how your libraries are operating and evolving
  * But if we can’t present data to support our stories and feelings we can’t have useful discussions with senior management etc. about the future of your libraries
  * Give you tools and knowledge so you can have a positive impact for your libraries
* Access to data is the main problem

### Links

* This document: [https://justin.kelly.org.au/powerbi-for-librarians-2023/](https://justin.kelly.org.au/powerbi-for-librarians-2023/)
* Presentation: [https://bit.ly/vala23-powerbi-slides](https://bit.ly/vala23-powerbi-slides)
* Files
  * [https://github.com/justinkelly/vala_2023_techcamp_powerbi](https://github.com/justinkelly/vala_2023_techcamp_powerbi)


**What we are going to do:**

Turn an excel/csv file into a maintainable, share-able and accurate dashboard, that allows you to answer complex queries simply using Power BI.

We'll use the loans data that data.gov.uk has made available. In this case, loans for 98 Northern Ireland public libraries

* [https://data.world/datagov-uk/47ee1f4e-861b-46d0-85ab-33be2cf6bc17](https://data.world/datagov-uk/47ee1f4e-861b-46d0-85ab-33be2cf6bc17)

## Section 1

_What is PowerBI, intro to it's interface, and import a CSV_

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

If you've managed to get this far - congratualtions - you've just completed one of the hardest probably - jsut getting the data and imported into PowerBI

## Section 2  
_Create some reports_

Go into `Report` view

![2021-powerbi-14-section1-9.png]({{site.baseurl}}/img/2021-powerbi-14-section1-9.png)

And now we'll cover the most use PowerBI visualistaions

![2023-power-bi-visualizations.png]({{site.baseurl}}/img/2023-power-bi-visualizations.png)

Click on the first visualisation in the top left of the `Visualizations` pane. This will add a blank `stacked bar chart` to the page

![2023-vala-blank.png]({{site.baseurl}}/img/2023-vala-blank.png)

Now click some data elements from the `Data` pane, such as `Item Category`, `Total`, and `Year`.

PowerBI will automatically place the different elements into the `Y-axis`, `X-axis` and `Legend` section of the `Visualizations` pane.

Try moving the different data elements into the different axis and legend sections to test the results.

Once you have data displaying in your visual go through each of the visualisation options and adjust the data elements to experiement. 

Stacked bar chart

![2023-vala-stacked-bar-chart.png]({{site.baseurl}}/img/2023-vala-stacked-bar-chart.png)

Stacked column chart

![2023-vala-stacked-column-chart.png]({{site.baseurl}}/img/2023-vala-stacked-column-chart.png)

Clustered bar chart

![2023-vala-clustered-bar-chart.png]({{site.baseurl}}/img/2023-vala-clustered-bar-chart.png)

Clustered column chart

![2023-vala-clustered-column-chart.png]({{site.baseurl}}/img/2023-vala-clustered-column-chart.png)

100% Stacked bar chart

![2023-vala-100-percent-stacked-bar-chart.png]({{site.baseurl}}/img/2023-vala-100-percent-stacked-bar-chart.png)

100% Stacked column chart

![2023-vala-100-percent-stacked-column-chart.png]({{site.baseurl}}/img/2023-vala-100-percent-stacked-column-chart.png)

Line chart

![2023-vala-line-chart.png]({{site.baseurl}}/img/2023-vala-line-chart.png)


Pie charts

![2023-vala-pie.png]({{site.baseurl}}/img/2023-vala-pie.png)

Donut charts

![2023-vala-donut.png]({{site.baseurl}}/img/2023-vala-donut.png)


Ribbon

![2023-vala-ribbon.png]({{site.baseurl}}/img/2023-vala-ribbon.png)


Treemap

![2023-vala-treemap.png]({{site.baseurl}}/img/2023-vala-treemap.png)


Waterfall

![2023-vala-waterfall.png]({{site.baseurl}}/img/2023-vala-waterfall.png)

Decomposition Tree

![2023-vala-decomposition-tree.png]({{site.baseurl}}/img/2023-vala-decomposition-tree.png)


Card

![2023-vala-card.png]({{site.baseurl}}/img/2023-vala-card.png)

Multi card

![2023-vala-multi-card-row.png]({{site.baseurl}}/img/2023-vala-multi-card-row.png)


Save the file


## Section 3
_Dashboard creation_

We have covered the most used visualisations in PowerBI, now we'll start to use them to create dashboards.

Dashboards are pages in PowerBI that can contain 1 or more visualistaion - such as in the image below

![2023-vala-dashboard-filter-cat.png]({{site.baseurl}}/img/2023-vala-dashboard-filter-cat.png)

To make a new dashbard, click on the + icon at the bottom of the page - refer image below

![2023-vala-dashboard-new.png]({{site.baseurl}}/img/2023-vala-dashboard-new.png)

And we'll bring in 3 different visuals into the 1 page

For the first visual, click the `Stacked column chart` icon and put `Year` in the `X-axis` and `Total` in the `Y-axis`.

![2023-vala-dashboard-visual-1.png]({{site.baseurl}}/img/2023-vala-dashboard-visual-1.png)

Next click the `Stacked bar chart` icon and drag it below (or anywhere you prefer) the first visual and put `Static_Library_Name` in the `Y-axis`, `Total` in the `Y-axis`, and `Static_Library_Name` in the `Legend`.

![2023-vala-dashboard-visual-2.png]({{site.baseurl}}/img/2023-vala-dashboard-visual-2.png)

Next click the `Stacked bar chart` icon again and drag it to th left (or anywhere you prefer) of the first visual and expand the hieght to the full length of the dashboard. Put `Item_Category` in the `Y-axis`, `Total` in the `Y-axis`, and `Item_Category` in the `Legend`.

![2023-vala-dashboard-visual-3.png]({{site.baseurl}}/img/2023-vala-dashboard-visual-3.png)

Done, you've created your first dashbaord!

## Section 4
_Make it pretty and add filters and slicers_

Now we have the base dashboard created, the next step is to format the dashboard to improve the usability and visuals

**Change the title of a visualisation:**

* Click the visualisation
* In the `Visualizations` pane select the `format` section
* Open the `Title` section and change the `Text` to the desired title you want

![2023-vala-step1-title.png]({{site.baseurl}}/img/2023-vala-step1-title.png)

**Filter a visualisation to top 5 items:**

* Click on the visualistaion
* In the `Fitlers` pane select `Filters on this visual`
* Change `Filter type` to `Top N`
* Enter `5` in the `Show items` section
* In `By value` drag in `Total` from the data pane

![2023-vala-step1-filter-top5.png]({{site.baseurl}}/img/2023-vala-step1-filter-top5.png)

**Add the your logo to the top of the page**

Download the logo if you don't have it from [https://github.com/justinkelly/vala_2023_techcamp_powerbi/blob/main/vala-logo.png](https://github.com/justinkelly/vala_2023_techcamp_powerbi/blob/main/vala-logo.png)

![vala-logo-.png]({{site.baseurl}}/img/vala-logo-.png)

And from the `Insert` menu, select `Image` refer image below
![2023-vala-insert-image.png]({{site.baseurl}}/img/2023-vala-insert-image.png)

Select your logo, then resize and drag it to your preferred location

**Change the background of the dashboard**

Click on an empty space in your dashboard, select the `Visualizations` pane, then the `Format page` tab, then expand the `Wallpaper` section. Here you can select a colour, or image and the dashboard backgroud.

![2023-vala-insert-wallpaper.png]({{site.baseurl}}/img/2023-vala-insert-wallpaper.png)

**Add rounded borders to the reports**

Click on a visualisation in your dashboard, then click `Format visual` from the `Visualizations` pane. Next select the `General` tab, and expand the `Effects` section. Here, expand `Visual board` drag the slider below `Rounded corners` to adjust the size of the visuals rounded borders.

![2023-vala-insert-rounded-borders.png]({{site.baseurl}}/img/2023-vala-insert-rounded-borders.png)


**Add slicers**

![2023-vala-slicer.png]({{site.baseurl}}/img/2023-vala-slicer.png)

Slicers are very simialr to filters, except they have a much easier to use and look much better in you dashboard.

To add a slicer to your dashboard, click on the `Slicer` icon in the visualisations list, then drag the data element you want to filter all reports on intop the `Field` section. In our example we'll drag `Year` into the `Field` section.

![2023-vala-insert-slicer.png]({{site.baseurl}}/img/2023-vala-insert-slicer.png)

**Bring it all together**

Once these formatting updates have been done, the dashboard should be easier to understand, nicer looking, and easier to use.

![2023-vala-dashboard.png]({{site.baseurl}}/img/2023-vala-dashboard.png)

## Section 5
_Data manipulation_

Review data and notice the pattern in the Item Category names, how can we make all these categories simpler and easier to read 

![2023-vala-dashboard-parent.png]({{site.baseurl}}/img/2023-vala-dashboard-parent.png)

![2023-vala-duplicate-column.png]({{site.baseurl}}/img/2023-vala-duplicate-column.png)


![2023-vala-split-delim.png]({{site.baseurl}}/img/2023-vala-split-delim.png)

![2023-vala-split-delim-space.png]({{site.baseurl}}/img/2023-vala-split-delim-space.png)

![2023-vala-split-delim-space-remove.png]({{site.baseurl}}/img/2023-vala-split-delim-space-remove.png)

![2023-vala-split-delim-space-save.png]({{site.baseurl}}/img/2023-vala-split-delim-space-save.png)

Then Close & Apply

![2021-powerbi-11-section1-6.png]({{site.baseurl}}/img/2021-powerbi-11-section1-6.png)

## Section 6
_Final changes_

Review data and notice the pattern in the Item Category names, how can we make all these categories simpler and easier to read 

![2023-vala-dashboard-parent.png]({{site.baseurl}}/img/2023-vala-dashboard-parent.png)

![2023-vala-dashboard-parent-item.png]({{site.baseurl}}/img/2023-vala-dashboard-parent-item.png)


## Section 7
_Extra_

To
![2023-vala-emily-isbn.png]({{site.baseurl}}/img/2023-vala-emily-isbn.png)

![2023-vala-emily-split.png]({{site.baseurl}}/img/2023-vala-emily-split.png)

![2023-vala-emily-count.png]({{site.baseurl}}/img/2023-vala-emily-count.png)

