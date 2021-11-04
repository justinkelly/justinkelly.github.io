---
layout: post
published: false
comments: false
title: >-
  Transcribing & enriching WW1 handwritten diaries from the State Library of
  Victoria with AI
tags: 'biblo.ai, slv'
---
## Summary

- For legible pages from World War 1 handwritten diaries held at the State Library of Victoria, AI services are able to correctly transcribe them at an level between 10% to 49% accuracy.
- For pages with a low level of accuracy, sections transcribed correctly add to the narrative of the diaries and further our understanding of the authors experience.
- Furthermore, even with a low level of accuracy, text analysis AI is able to enrich the transcription with very useful geographic location and entity recognition information.
- At a little of 1 cent (AUD) per page, AI based transcription and enrichment is a very cost efficient way to improve the accessibility of a library's digital collection.

## Abstract

Investigate the cost and accuracy of using AI to automatically transcribe and enrich handwritten World War 1 diaries 

## Background

In 2019, I received the [SLV Digital Fellowship](https://www.slv.vic.gov.au/interact-with-us/fellowships/digital-fellowship/2019-fellow-justin-kelly) to investigate computer vision and related AI technologists to automatically enrich the metadata for SLV digital records.

The result of this fellowship is [Biblio.ai](http://biblio.ai/) - an open source web service that connects to libraries digital repositories, extracts the available digital objects and uses AI and 
computer vision to automatically enhance the metadata of the records - with the primary focus on accessibility.

## Introduction

State Library of Victoria has collection of scanned handwritten diaries from Australian soldiers in World War 1. These records all have detailed bibliographic summaries - but none have been transcribed. In this blog post we'll detail 3 selected pages from the 80 page diary and review and score the AI transcribe and enrichment.

Thanks to [Shona Dewar](https://www.linkedin.com/in/shona-dewar-47b65074) from SLV for sending through a selection of diaries! In this blog post the diary to be analysed is of Private Edgar Atheling Davis, who served in two periods between 1915 and 1919. Available online at [http://handle.slv.vic.gov.au/10381/311907](http://handle.slv.vic.gov.au/10381/311907)

## First selected page - file 25 of 83


![]({{site.baseurl}}/img/2021-11-file-1.png)![2021-11-file-1.png]({{site.baseurl}}/img/2021-11-file-1.png)

Source record: 

[https://rosetta.slv.vic.gov.au/delivery/DeliveryManagerServlet?dps_func=stream&dps_pid=FL19637141](https://rosetta.slv.vic.gov.au/delivery/DeliveryManagerServlet?dps_func=stream&dps_pid=FL19637141)

AI results: 

[https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL19637141](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL19637141)

Text transcription component of AI results:

![2021-11-file-1-text.png]({{site.baseurl}}/img/2021-11-file-1-text.png)


**Score**

- Words correct: 8
- Words total: 80
- Percent correct: 10%

**Summary**

Even with the low level of accuracy - being able to transcribe the key section `occasional artillery duels` adds to the narrative of the document. The focus of [Biblio.ai](http://Biblio.ai) is on accessibility - any untranscribed documents are 100% inaccessible to the visually impaired - so I count any correct automated transcription a positive for users with accessibility limitations.

## 2nd selected page - file 38 of 83

![2021-11-file-2.png]({{site.baseurl}}/img/2021-11-file-2.png)


Source image:

[https://rosetta.slv.vic.gov.au/delivery/DeliveryManagerServlet?dps_func=stream&dps_pid=FL19637103](https://rosetta.slv.vic.gov.au/delivery/DeliveryManagerServlet?dps_func=stream&dps_pid=FL19637103)

AI results:

[https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL19637103](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL19637103)

Text transcription component of AI results:

![2021-11-file-2-text.png]({{site.baseurl}}/img/2021-11-file-2-text.png)

**Score:**

- Words correct: 11
- Words total: 75
- Percent correct: 15%

**Enrichment**

On this page there was a number of references to what looks like locations

![2021-11-file-2-locations.png]({{site.baseurl}}/img/2021-11-file-2-locations.png)


`Charleroi` (highlighted in red above) was automatically identified as a geographic location - while `La Harve` was identified just from the text `Harve` (highlighted in blue above) in the document

AI text analysis - locations

![2021-11-file-2-locations-ai.png]({{site.baseurl}}/img/2021-11-file-2-locations-ai.png)


What about the text highlighted in yellow? This was transcribed as `Havefleur` - which is not a known location.

With the automatically identified location information and some analysis on Google Maps we can try and find `Havefleur`  and other possible locations mentioned in the diary page.

What was transcribed as `Havefleur` is most likely the French town of `Harfleur` 

![2021-11-file-2-locations-map.png]({{site.baseurl}}/img/2021-11-file-2-locations-map.png)


**Summary**

Text analysis AI with automatic geographic location recognition proves crucial in furthering our understanding of the document. Even when only a small percent of words are transcribed correctly the extra information AI can add brings improved levels of comprehension with the contents of the document. 

We must also remembers not only visually impaired users, but users from non English speaking backgrounds and younger learners - who may not be familiar with historical cursive script and European geography. Enabling a document to be enriched with information such as Google Map links for mentioned locations improved the user experience and bring a new depth to the digital image.

## 3rd selected page - file 22 of 83

![2021-11-file-3.png]({{site.baseurl}}/img/2021-11-file-3.png)


Source image: [https://rosetta.slv.vic.gov.au/delivery/DeliveryManagerServlet?dps_func=stream&dps_pid=FL19637169](https://rosetta.slv.vic.gov.au/delivery/DeliveryManagerServlet?dps_func=stream&dps_pid=FL19637169)

AI results: [https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL19637169](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL19637169)

Text transcription component of AI results:

![2021-11-file-3-text.png]({{site.baseurl}}/img/2021-11-file-3-text.png)


**Score**

- Words correct: 41
- Words total: 84
- Percent correct: 49%

**Summary**

While this page had a high level of accuracy of 49% - for me the most important piece of  information of automatic identification of `Salisbury` as a geographic location. With that information, we can make educated guessed at the incorrectly transcribed word - such as `White house` refers the the ancient White horse symbol in Salisbury and `bathedral` is actually refers to the Salisbury cathedral.

## Cost

Using [Biblio.ai](http://Biblio.ai) and the underlying MS Azure services the cost to automatiicaly transribe and enrich the entire 83 pages of Private Edgar Atheling Davis WW1 diary is 86 cents AUD. A little over 1 cent AUD per page.

![2021-11-cost.png]({{site.baseurl}}/img/2021-11-cost.png)


## Conclusion

With the focus on improving the accessiblity of a libraries digital collection and enriching metdata automatically (and not on 100% perfect word-for-word transcription) -  AI services enabled by Biblio.AI can play an important role in transforming


The diary analysised in this blog post, most likely would never be manually transcribed. Manual transcription of historical documents such as this diary is a very time consuiming and expensive process - and normally limited to historical important documents - or works by important public figures. 

By using AI services like Biblio.AI a library can automatically transcrobe (at less than perfect levels of accuracy) their entire digital collection for just over 1 cent AUD per page. From the examples provided above I hope to present the clear picture that when focused on acessibility - any automated transcription and enrichment - no matter the level of accuracy - is better than none.

