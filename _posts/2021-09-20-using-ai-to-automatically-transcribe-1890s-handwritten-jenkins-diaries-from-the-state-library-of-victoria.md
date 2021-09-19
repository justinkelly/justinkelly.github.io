---
layout: post
published: true
comments: true
title: >-
  Using AI to automatically transcribe 1890s handwritten Jenkins Diaries from
  the State Library of Victoria
tags: ''
---
## Summary

- 16 of the 25 volumes of the Jenkins diaries have been transcribed at near perfect level of accuracy over an approximate **10 years** by State Library of Victoria (SLV) staff and volunteers.
- 3 volumes where transcribes by the AI based web service [Biblio.ai](https://biblio.ai) in approximately **5 hours** at a level of accuracy of between 40% and 83% (excluding impossible to read, totally damaged or extremely hard to read pages) - at a cost of under $10 Australian Dollars.
- For the purpose of accessibility and quantity rather than accuracy and quality, AI based handwriting to text presents a new solutions to complement manual transcriptions of historical documents.

## Abstract

Investigation of the purpose, speed, cost and accuracy of using AI to automatically transcript 1890s era handwritten diaries of an itinerant labourer in gold rush era Central Victoria.

## Introduction

In 1997, the State Library of Victoria (SLV) acquired 25 volumes of the handwritten diaries of Joseph Jenkins - itinerant labourer in gold rush era Central Victoria. Around 2010 an internal SLV project was started by staff and volunteers to manually transcribe the Jenkins diaries. In the last 10 years, 16 of the 25 volumes have been transcribed - with an accuracy of around 99% of words being transcribed.

In 2019, I received the SLV Digital Fellowship ( [https://www.slv.vic.gov.au/interact-with-us/fellowships/digital-fellowship/2019-fellow-justin-kelly](https://www.slv.vic.gov.au/interact-with-us/fellowships/digital-fellowship/2019-fellow-justin-kelly) ) to look at using computer vision and related AI technologists to automatically enrich the metadata for SLV digital records.

The result of this fellowship is [Biblio.ai](http://biblio.ai) - an open source web service that connects to libraries digital repositories, extracts the available digital objects and uses AI and computer vision to automatically enhance the metadata of the records - with the primary focus on accessilibity.

One of the many features of [Biblio.a](http://biblio.au)i is the ability to convert handwriting to text, using Microsoft Azure Cognitive Services. Given the importance of the Jenkins diaries to this history of Victoria - I though these diaries would be a prefect test subject to document, analyse and measure the affectiveness of AI based transcriptions of historical handwritten doucments.

4 pages of handwritting where chosen as test records, ranging from easy (cursive, historical and clear) to very hard to read (cursive, historical, words joined together, and squashed)

## Easy

First up is a letter from Volume 1 - to Joseph Jenkins

Original document: [https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371699&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371699&mode=browse)

![2021-09-jenkins-page1.png]({{site.baseurl}}/img/2021-09-jenkins-page1.png)

AI API result: [https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371699](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371699)

### AI transcription

```
Pheola Victoria
Aug 184 1592
just a few lines to 
let you know S received your kind 
letter to-day after waiting for a long 
time to hear from you. I' was 
asthonished to tear of My Brother 
- in law to blame me wrongful for  
Squandering my Brother property 
what I did notget. Jagn surprised 
that they would not to me Swrote  
home as I told you before and gave  
them full particulars and ( got  
no answer I told them their was  
a will lift but being concealed so  
long it would cost Ignore to get it 
```

### Results

- Original document - 
  - Words: 102
- AI transcription:  
  - Words correct: 85
  - Percent correct: 83%


## Medium

Next up are letters and diary entries by Joseph with increasing level of difficulty to read

Original document: [https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371649&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371649&mode=browse)

![2021-09-jenkins-page2.png]({{site.baseurl}}/img/2021-09-jenkins-page2.png)

AI API result: [https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371649](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371649)

### API results

```
The Parapet have now been build higher than ever 
War young flock. for this year tourists of to lamb. 
10 paluss of colts and another wheely to come 
I loves as far, the winter has been moist 
durm, thay, and color. this mouth has not
in little warmer. Hto have forty anche 
wherethe heart, all been Down, the hohate 
Blades are very backward. 
The Diary I send two papers off with the 
```

### Results

- Original document:
  - Words: 94
- AI transcription:
  - Words correct: 49
  - Percent correct: 52%


## Hard

Original document: [https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371576&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371576&mode=browse)

![2021-09-jenkins-page3.png]({{site.baseurl}}/img/2021-09-jenkins-page3.png)

AI API result: [https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371576](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371576)

### AI transcrtiption
```
Sie, Inving on the b the of fuly last year  
ligh a certain quorumcript in your 
Care whoon the consider ation than ! 
would Either call for them after wounds 
Or lund Marups for you to return 
there . Many times I called and ual 
a huepenper for them, but would wuts 
five you haw fam peing to 
Return. they was intended for monitors 
"lie the Leader " at forth and were
that he loos anceable with balls 
Content, bat too lengthy and hudded 
in too many subjects for any 
newspaper, and that it would 
take the lashole hace in the seadue 
It would fill nearly 3' columns 
```

### Results


- Original document:
  - Words: 127
- AI transcription:
  - Correct words: 58
  - Percent correct: 46%



## Very hard


[https://viewer.slv.vic.gov.au/?entity=IE20353400&file=FL20371855&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20353400&file=FL20371855&mode=browse)

![2021-09-jenkins-page4.png]({{site.baseurl}}/img/2021-09-jenkins-page4.png)

AI API result: [https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371855](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371855)

### AI transcription

```
I have to get oh to attend to onature. I slapher gain lentils b a - one five 
fell and gloomy. we had a towerat T so I had an Excuse feetbe late  
She wh work the became live and pleasant before croon ) came home 
the for dinner and took full two hever to cook and lak any  
we. diviner Ido not feel thong enough to walk down to the transtion 
abo to I took a heaver job that wanted to be scouronly rum 
an I came homeEarly and Inade myself Ready for hash 

```

### Results

- original document:
  - Words: 110
AI transcription:  
  - Words correct: 58
  - Percent correct : 53%

## Cost

3 full volumes of the Jenkins diaries plus two thousand other SLV images were processed at a total cost of $8.11 Australian Dollars.

[Biblio.ai](https://biblio.ai) - Open source web service create by me to connect libraries, APIs, and AI services: $0

[Micrsoft Azure Congitive Services](https://azure.microsoft.com/en-us/services/cognitive-services/#overview) to do a number of different requests per image. $8.11

![2021-09-jenkins-cost.png]({{site.baseurl}}/img/2021-09-jenkins-cost.png)

Database and API services provided the open source web server [Supabase.io](https://supabase.io/) : $0

Serverless functions - the Biblio.ai API results - from [Netlify](https://www.netlify.com/): $0

## Quantity or Quality?

My main focus of my SLV Digital Fellowship is how increase the accessiblity of digital items and collections - particulary focused on people with visual, hearing or learning difficultities - using AI and realted technologies.

As a result of my reaserch in this area and the development of [biblio.ai](http://biblio.ai) - it is my personal opinion that anything that can be done (no matter if it's not perfect) to improve accessibility is a positive result.

For people with visual or learning difficulttiues, a Library having historical handwritten documents with no transcriptions, is the same is having no documents at atll.

Any transcription - with appropriate caveats/notices - is better than none.

Many Librarians are hesitant to make public something that is not perfect, when focused around items of limited quantity - this makes sense, but when a library such as SLV has hundreds of thousands of items undescribed, a more pragmatic is recommended.

## Conclusion

For the purpose of accessibility and quantity rather than accuracy and quality, AI based handwriting to text presents a new solutions to complement manual transcriptions of historical documents. 