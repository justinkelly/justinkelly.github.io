## A New Post


## Summary

16 of the 25 volumes of the Jenkins diaries have been transcribed at near perfect level of accuracy over an approximate **10 years** by State Library of Victoria (SLV) staff and volunteers.

3 volumes where transcribes by the AI based web service [Biblio.ai](https://biblio.ai) in approximately **5 hours** at a level of accuracy of between 40% and 83% (excluding impossible to read, totally damaged or extremely hard to read pages) - at a cost of under $10 Australian Dollars.

For the purpose of accessibility and quantity rather than accuracy and quality, AI based handwriting to text presents a new solutions to complement manual transcriptions of historical documents.

## Abstract

Investigation of the purpose, speed, cost and accuracy of using AI to automatically transcript 1890s era handwritten diaries of an *itinerant labourer in gold rush era Central Victoria.*

## Introduction

In 1997 State Library of Victoria (SLV) acquired 25 volumes of the handwritten diaries of Joseph Jenkins -  *itinerant labourer in gold rush era Central Victoria. Around 2010 a internal SLV project was staff by staff and volunteers to manually transcribe the Jenkins diaries. In the last 10 years, 16 of the 25 volumes have been transcribed - with an accuracy of around 99% of words being transcribed.*

In 2019 I received the SLV Digital Fellowship ( [https://www.slv.vic.gov.au/interact-with-us/fellowships/digital-fellowship/2019-fellow-justin-kelly](https://www.slv.vic.gov.au/interact-with-us/fellowships/digital-fellowship/2019-fellow-justin-kelly) ) to look at using computer vision and related AI technologists to automatically enrich the metadata for SLV digital records.

The result of this fellowship is [Biblio.ai](http://biblio.ai) - an open source web service that connects to libraries digital repositories, extracts the available digital objects and uses AI and computer vision to automatically enhance the metadata of the records.

One of the many features of [Biblio.a](http://biblio.au)i is the ability to convert handwriting to text, using Microsoft Azure Cognitive Services. Given the importance of the Jenkins diaries to this history of Victoria - I though these diaries would be a prefect test subject to document, analyse and measure the affectiveness of AI based transcriptions of historical handwritten doucments.

4 pages of handwriting where chosen as test records, ranging from easy ( cursice, historical and clear) to very hard to read (cusrive, historical, words joined together, and squashed)

## Easy

First up is a letter from Volume 1 - to Joseph Jenkins

[https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371699&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371699&mode=browse)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ee4d0a7a-1595-44e1-af24-6fd16a8609b1/Untitled.png)

[https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371699](https://api.biblio.ai/.netlify/functions/data-html?metadata_key=metadata_identifier_file_id&metadata_value=FL20371699)

### API results

```jsx
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

Results

Original document

words: 102

Translation

correct works: 85

correct  percent: 83%

## Medium

Next up are letters and diary entries by Joseph with increasing level of difficulty to read

[https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371649&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371649&mode=browse)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6fd677f6-6d84-4c06-82c4-fb231167a4d2/Untitled.png)

Original

word: 94

transcription

words correct 49

percentage correct:  52%

```jsx
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

## Hard

[https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371576&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20347212&file=FL20371576&mode=browse)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d9bb420f-64a8-4954-b303-1b3908da4486/Untitled.png)

Original

words: 127

Translation

correct words: 58

correct percentage: 46%

```jsx
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

Very hard

worrds 110:

[https://viewer.slv.vic.gov.au/?entity=IE20353400&file=FL20371855&mode=browse](https://viewer.slv.vic.gov.au/?entity=IE20353400&file=FL20371855&mode=browse)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a438a9e8-0d97-4bed-b5fb-23fd4da059d8/Untitled.png)

```jsx
I have to get oh to attend to onature. I slapher gain lentils b a - one five 
fell and gloomy. we had a towerat T so I had an Excuse feetbe late  
She wh work the became live and pleasant before croon ) came home 
the for dinner and took full two hever to cook and lak any  
we. diviner Ido not feel thong enough to walk down to the transtion 
abo to I took a heaver job that wanted to be scouronly rum 
an I came homeEarly and Inade myself Ready for hash 

```

Words correct: 58

Percentage correct : 53%

Cost:

3 full volumes of the Jenkins diaries plus two thousand other SLV images were processed at a total cost of $8.11 Australian Dollars. This is the actual cost of Micrsoft Azure Congitive Services to do a number of different requests per image.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e56d2635-6cd4-47cc-8d9e-74ed399d667f/Untitled.png)

Quantity or Quality?

My main focus of my SLV Digital Fellowship is how increase the accessiblity of digital items and collections - particulary focused on people with visual, hearing or learning difficultities - using AI and realted technologies.

As a result of my reaserch in this area and the development of [biblio.ai](http://biblio.ai) - it is my personal opinion that anything that can be done (no matter if it's not perfect) to improve accessibility is a positive result.

For people with visual or learning difficulttiues, a Library having historical handwritten documents with no transcriptions, is the same is having no documents at atll.

 Any transcription - with approblie cavests/notices - is better than none.

Many Librarians are hesitant to make public something that is not perfect, when focused around items of limited quantity - this makes sense, but when a library such as SLV has hundres of thousands of items undescribed, a more pragmatic is recommended.

Conclusion

AI based transctiptsion does not replace the need for manual human based transcriptions of historical doucments - it complements it, and enables an institution to base transcriptions for previously unimaginable quantioty of items.