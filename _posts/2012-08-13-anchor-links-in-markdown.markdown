---
layout: post
title: "Anchor links in markdown"
date: 2012-08-13 14:12
comments: true
tags: markdown
---

Need to do anchor links in markdown formatting but wasn't sure if it was possible,  below is the code to use to make it work

the markdown to link to an anchor

    Take me to [contact](#contact_form)

as you can add in plain html in to markdown, add in the below html for the anchor

    <a id="contact_form"></a>

or stick in the in the markdown header section

    ### <a id="contact_form"></a>Contact form
