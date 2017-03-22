---
layout: post
title: "Vim search and repeat"
comments: true
tags: vi
---

Accidentally found out what `&` does in Vim search and replace `~:%s` commands.
It can be used to repeat the searched form string in the replacement string, examples below:

some sample data

    form.get_data

execute `:%s/form/&&/g`

will result in 

    formform.get_data

execute `:%s/get/testData:&/g`

will result in 

    form.testData:get_data
