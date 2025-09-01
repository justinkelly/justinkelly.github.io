---
layout: post
published: false
comments: true
title: Modernising a legacy open source app using Claude Code
---
### In short

In a few hours over the weekend, using Claude Code to do at least 95% of the work, Claude Code fully modernised the legacy open source web application SimpleInvoices.

Below goes into the detail on how to do this, limitation, cavaets, and benefits.

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

### Get Claude to understanding the app 

_Assumptions:_

* _Claude Code in installed_
* _Pro subscription of Claude Code at minimum_
* _Using command line version_ 

To get started with Claude Code on a project, open Claude Code up in the project directory, and run `/init`.

Refer recording and image of init in action

<script src="https://asciinema.org/a/nCWHgw7FgNt7xztiMorhElq8Q.js" id="asciicast-nCWHgw7FgNt7xztiMorhElq8Q" async="true"></script>

![2025-08-25 Claude init.png]({{site.baseurl}}/img/2025-08-25 Claude init.png)


```markdown
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## About SimpleInvoices

SimpleInvoices is a PHP-based invoicing application that has been "Making invoicing rock since '05". It's a web-based application using the Zend Framework 1.11, Smarty templating, and MySQL database.

## Setup and Dependencies

### Cloning
The project uses git submodules for the Zend Framework dependency:
```bash
git clone --recursive git@github.com:simpleinvoices/simpleinvoices.git
```

If you downloaded a zip instead of cloning, manually download the [Zend v1.11 library](https://github.com/dmelo/Zend-1.11/archive/27d7f1b3f45a436a9c795881db1d41689b8f9224.zip) and expand it into `library/Zend/`.

### Configuration
- Main config: `config/config.php` (INI format with PHP header for security)
- Database configuration includes MySQL connection details
- Configuration sections: production, development, authentication, export settings, localization

## Architecture Overview

### Directory Structure
- `index.php` - Main controller that handles all requests via GET parameters (module, view, case)
- `modules/` - Core application modules (invoices, customers, billers, payments, etc.)
- `include/` - Core PHP includes and initialization files
  - `include/init.php` - Zend Framework initialization and autoloading
  - `include/class/` - Core business logic classes
- `templates/` - Smarty template files
- `library/` - Third-party libraries (Zend Framework, PDF generation, etc.)
- `extensions/` - Plugin-like extensions for additional functionality
- `custom/` - Custom overrides for templates and modules
- `databases/mysql/` - Database schema and sample data

### Request Flow
1. All requests go through `index.php`
2. URL parameters: `?module=invoices&view=manage&case=edit`
3. Security check via `checkLogin()` function
4. Module-specific PHP files handle business logic
5. Smarty templates render the UI

### Key Classes
- `invoice` class (`include/class/invoice.php`) - Core invoice functionality
- Database abstraction via Zend Framework PDO
- Custom field handling via `CustomField.php`
- Export functionality for PDF, XLS, DOC formats

### Database
- MySQL database with full schema in `databases/mysql/Full_Simple_Invoices.sql`
- Entity Relationship Diagram available as PNG in databases/mysql/
- Uses PDO with prepared statements for security
- Domain-based multi-tenancy support

### Extensions System
Extensions can be found in `extensions/` directory with individual README files:
- sub_customer - Sub-customer functionality  
- default_invoice - Default invoice templates
- mini - Minimal UI
- text_ui - Text-based interface
- expense - Expense tracking
- And many more

### Custom Override System
The `GetCustomPath()` function allows overriding default templates and modules:
- Custom templates: `custom/default_template/`
- Custom modules: `custom/modules/`
- Falls back to default if custom version doesn't exist

## Development Notes

### No Build System
This is a traditional PHP application with no build process, package managers, or test framework. Changes are made directly to PHP files.

### Localization  
- 41+ languages supported via `lang/` directory
- Each language has an `info.xml` file
- Translation project available on Transifex

### Security
- All requests filtered through `index.php` 
- `filenameEscape()` function used on GET parameters
- Authentication can be enabled in config
- Direct file browsing blocked with `BROWSE` constant check

### Database Schema
- Full database structure in `databases/mysql/structure.sql`
- Sample data available in JSON format in `databases/json/`
- ERD diagram shows primary/foreign key relationships
```

### Upgrading core libraries and editing all affected code


```
replace /library/Zend with latest version of Zend Framework v1 that is maintained and compat with php8 and install and manage this using composer and adjust any existing code that uses zend
framework with compatible code for the new version - also replace the usage of Zend_Mail with latest PHPMailer library - also installed via composer and check the changes work - also replace any php libraries with composer manager version and adjust code
```


![2025-09-01 claude zf1.png]({{site.baseurl}}/img/2025-09-01 claude zf1.png)

![2025-09-01 claude zend replace.png]({{site.baseurl}}/img/2025-09-01 claude zend replace.png)



