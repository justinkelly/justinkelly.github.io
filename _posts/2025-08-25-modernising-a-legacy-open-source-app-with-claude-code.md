---
layout: post
published: false
comments: true
title: Modernising a legacy open source app using Claude Code
---
### In short

In a few hours over the weekend, using Claude Code to do at least 95% of the work, Claude Code fully modernised the legacy open source web application SimpleInvoices.

![2025-08-25 Claude modern.png]({{site.baseurl}}/img/2025-08-25 Claude modern.png)

### Introduction

For the last 10 years I had put off upgrading and modernising the open source PHP web application [SimpleInvoices](https://github.com/simpleinvoices/simpleinvoices) that I started way back in 2005 and maintained till around 2015.

With all the buzz around agentic coding I wanted to test this out. 

In a few hours over the weekend, using Claude Code to do at least 95% of the work, Claude Code fully modernised SimpleInvoices.

* Migrating SimpleInvoices from a PHP 5 to a PHP 8 application
* Upgrading all libraries used
  * where the used libraries are no longer maintained, Claude found replacements and auto rewrote all affected code to use the new libraries
* Installed and implemented Composer, and migration the old libraries to Composer format
* Security reviewed all SimpleInvoices code and fix up old vunerabilities
* Merged in all the old branches from GitHub that had extra features or changes done ahead of the current main branch
* Created a working Docker setup for SimpleInvoices, it understood the code and documentaion and automated the install process of SimpleInvoices settings and data in Docker 

Whatever your option on AI assisted coded or vibe coding and its roles in open source development - or development in general. There's no way I would of got around to manually upgrading an open source app that hasn't been maintained for 10 year. 

What would of taken me days, was done in hours, can't rave about Claude Code and other tools enough. They defintely have a place in the open source development landscape, they have limitations, are not repalcements for developers - but enablers.

Below goes through the details on how I did this with Claude and the found limitations

_Note:_ 
_* Claude Code requires a paid $20USD per month subscription
_* There are open source alternatives to Claude Code - such as Aider - but this was not explored_

### Introduction

For Cloaude
Claude init

<script src="https://asciinema.org/a/nCWHgw7FgNt7xztiMorhElq8Q.js" id="asciicast-nCWHgw7FgNt7xztiMorhElq8Q" async="true"></script>


![2025-08-25 Claude init.png]({{site.baseurl}}/img/2025-08-25 Claude init.png)

```


```

Claude - find a new maintained version of the main library (ZZend Framework v1) that is now long unspported)


```
replace /library/Zend with latest version of Zend Framework v1 that is maintained and compat with php8 and install
  and manage this using composer and adjust any existing code that uses zend
    framework with compatible code for the new version - also replace the usage of Zend_Mail with latest PHPMailer
  library - also installed via composer and check the changes work
  ```
