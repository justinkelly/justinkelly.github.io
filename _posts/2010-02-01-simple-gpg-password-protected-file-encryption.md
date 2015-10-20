--- 
layout: post
title: simple gpg password protected file encryption example
published: true
date: 2010-02-01
tags: 
- bash
- linux
posterous_url: http://blog.justin.kelly.org.au/simple-gpg-password-protected-file-encryption
posterous_slug: simple-gpg-password-protected-file-encryption
---
### Creating the file:

    vi passwords.txt

#### Encrypt the file:

    gpg -c -a passwords.txt

and enter a password when prompted, >now delete the original plain text file

    rm passwords.txt
    
#### Viewing the file:

to view the file with less

    gpg -d passwords.txt.asc | less

and enter the password when prompted

#### Editing the file:

To edit the password file decrypt the file to plain txt

    gpg passwords.txt.asc

this will place a plain text file call `passwords.txt` in the current directory
