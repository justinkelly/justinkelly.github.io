--- 
layout: post
title: Google Calendar with Mozilla Lightning/Sunbird - accepting invites solution
published: true
date: 2010-04-21
tags: 
- google
- google apps
posterous_url: http://blog.justin.kelly.org.au/google-calendar-with-mozilla-lightningsunbird
posterous_slug: google-calendar-with-mozilla-lightningsunbird
---
![](http://i.minus.com/jiOJ0LDoKXUv4.jpg)
![](http://i.minus.com/ibfvZ3kVnrzbcM.png)
There's an isssue with the Mozilla Lightning/Sunbird addon "Provider for Google Calendar Provider"
where you can't accept meeting/calendar invitation from others into your calendar - which is a real pain if you work in a corporate office setup. 

The mozilla forums are packed with people posting this issue and no decent solution.

The solution is very simple. Stop using the Provider for Google Calendar Provider and just use Google Calendars CalDAV support 

To set up CalDAV support for Google Calendar in Mozilla Sunbird, follow these steps:

- Open the Sunbird application and select File > New Calendar
- Select On the Network and click Next
- Select the CalDAV format option
- In the Location field, enter `https://www.google.com/calendar/dav/[ your Google Calendar ID ] /events` and click Next

Your Google Calendar ID for your primary calendar is just your email address, but for all other calendars the Calendar ID will be in the form of [ long string of characters]@<a href="http://group.calendar.google.com">group.calendar.google.com</a>. You can get the Calendar ID by clicking the down arrow next to your calendar at <a href="http://calendar.google.com">calendar.google.com</a> and selecting 'Calendar Settings'.  Be sure to use https in your URL, as an http address will not work.

- Enter a name and select a color for your calendar.
- In the pop-up screen, enter the following information:
- Username: This is the complete email address you use with Google Calendar (including the part after the @ sign). 
  - If you're using Google Apps, be sure to enter your Google Apps email address. 

- Password: This is the password you use to sign in to Google Calendar 
- Click OK.

Your Google Calendar will now appear in the Calendar tab of Mozilla Sunbird/Lighting, and any invites can now be accepted
