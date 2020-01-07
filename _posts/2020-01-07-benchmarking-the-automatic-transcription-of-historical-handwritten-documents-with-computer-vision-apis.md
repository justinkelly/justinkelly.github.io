---
layout: post
published: true
comments: true
title: >-
  Benchmarking the automatic transcription of historical handwritten documents
  with computer vision APIs
tags: biblio.ai
---
## Summary

For automatic transcription of most historical hand written cursive script documents, Microsoft Azure is the most accurate - except for very hard to read documents where Google Cloud leads

Scaled scores: 

- MS Azure: 91 
- Google Cloud: 89
- Amazon AWS: 11

## Introduction

Thanks to the generous funding of the State Library of Victoria's (SLV) [Digital Fellowship program][digital-fellowship], I have been able to start work on the development of an open source service ( [biblio.ai][biblio.ai] ) for institutional libraries to use the latest in computer vision technologies to automatically enrich the metadata of their image collections.

The 3 main areas of automatic metadata enrichment will be:

- Transcription of handwriting and text in images ( handwritten notes, typed text, even words in signs,etc.. )
- Object detection for tagging/labeling (pick out the main objects in an image - enable users to browser a collection via tags etc..)
- Automatic descriptions of images (adding human readable descriptions in bulk to an image collection, where existing records may have little or no metadata/cataloguing)

The purpose of metadata enrichment with computer vision is:

- Discoverability. Enable the discoverability and re-use of a libraries digital collections by a much greater audience. 
- Accessibility. Without rich metadata a libraries image collection is inaccessible to vision impaired users. 
- Automate the hard stuff for libraries. Institutional libraries such as the SLV have millions of scanned images, but only a small fraction of these (the really important works) get transcribed (it's expensive and very time consuming)

The first step in this project is to benchmark the available computer vision technologies to identify which the most suitable for the various types of collections and institutions.

By far, the most useful thing computer vision can do for institutions libraries with image collections is the transcription of words (specifically cursive handwriting) in images to text. Making huge collections of images and documents searchable and accessible.

Even though the automatic transcription of typed text documents via standard OCR software has been available for years. It is only very recent that transcription of cursive handwritten images has started to move from purely academic to being generally available from leading cloud providers.

For conversion of scanned handwritten documents to text there are currently (Jan 2020) 4 main providers. 

- [Microsoft Azure Computer Vision](https://azure.microsoft.com/en-gb/services/cognitive-services/computer-vision/) 
- [Amazon AWS Rekognition](https://aws.amazon.com/rekognition/)
- [Google Cloud Vision](https://cloud.google.com/vision/)
- [ABBYY Cloud OCR](https://www.abbyy.com/en-au/cloud-ocr-sdk/)

Notes: unfortunately ABBYY is suitable only for form style block letter handwriting conversion and the leading open source OCR solution [Tesseract](https://github.com/tesseract-ocr/tesseract) is currently [not easily suitable for general handwriting recognition][tesseract]. Both of these options have been excluded in the following tests.

## Benchmark results

{:.table .table-striped}
| Document                | Age (years) | Difficulty   | MS Azure  | Google Cloud | Amazon AWS |
|:------ |:------ |:------ |:-------- |:------ |:------ |:-------- |
| [Swinburne: Letter from aboard S.S. Shropshire][swin-letter]     | 100  | Med         |  78%     |  66%      |  4%          |
| [Swinbunre: George Swinburne's diary, 1882 page 4][swin-diary]     | 138  | Hard         |  79%         |  62%               |  7%                 |
| [SLV: Christmas 1888. A page from an illustrated diary][slv-postcard]        | 167  | Very Hard |  60%         |  75%               |  3%                 |
| [SLV: Diary of Charles Evans, 1853 - page 7][slv-diary]   | 132  | Easy          |  95%         |  92%               |  49%               | 

MS Azure: 78%
Google Cloud: 74%
Amazon AWS: 16%

Scaled for difficulty: ( Easy = .5, Medium = 1, Hard = 1.5, Very Hard = 2)

MS Azure: 91
Google Cloud: 89
Amazon AWS: 11


## Swinburne | Letter from aboard S.S. Shropshire

Age: 100 years
Perceived difficulty: Medium (cursive script, well spaced, pretty clear)

Transcript:

```
S.S. Shropshire
At Sea
4th March 19120

Mr F.W. Green.
Dear Sir,

We are off to Freemantle for another 40,000 Boxes of apples after loading 110,00 at Hobart. We did not call at Melbourne again. We will land 6,000 Boxes of Butter at Freemantle from Sydney.

Will you please remember me to Mr Waters & to my fiends at My College and with best wishes to yourself I remain

Yours faithfully
John Duncan
```
Word count: 77

Azure:

```
S.S.  
Shropshire
my. N. Green.  
Aff March. 19120, 
Dear Dien We are off- to Freemantle 
for another 40.000 Boxes of apples after 
loading 1 10.000, at Nobrash, wel did not call at 
Melbourne, again. We will land 6.000. Boxes 
of Butter atfreemantle from Sydney . 
Will you please remember me 
to Mr Waters & bol my friends at Me  
College. and with best wishes to 
yourself 
I pemain
yours faithfully 
John. Duncan 
```

Words correct: 60 = 78%

Google:

```
S.s. Ohropshire   2
lat sea   1
4 Wareh. 19120,  1
Mr J. W. Green.  3
Dear Sire We are off to freemantle  6
for another 40,000 Bosces of apples after  6
Loading 110000, at Hobart, wobel did not eallah  6
Melbfturne, again. He will land 6.000. Boces  4
of Buter and Freemande from Sydney.  3
Will you fleebe femember me  3
to Me Waters e to my friends at the  6
College and with Post wishes to :  4
yourself  1
Yours faithfully  2
seman
can
```

Words correct:51 = 66%

AWS:

```
S.S. ehrefiuhi ea
Woes areh. 191 20.
Greeen
We al f b Freemanl
or anothe 40:0 Noba: Boeis
ples olidl plo aplen oallo
Hoarding Melo frne 1/10000, al
gain. Me u'llland 6.00D. Bocoo
BBuMer a antle ylny.
Iill fe bpe me
```

Words correct: 3 = 4%


### George Swinburne's diary, 1882 to 1886 page 4]

Age: 138 years
Perceived difficulty: Hard (cursive, clear writing on clean paper)

https://i.imgur.com/YkqQZfB.png
https://commons.swinburne.edu.au/items/0903ff8d-ddc3-41f9-96b6-928eee4d1bde/1/


Transcript:

```
3rd Feb 1882

This is my 21st birthday! I am a man! very significant that; as father says, I will have to think and act for myself now. Well, with God's help I will endeavour to do right I live a thruthtful, righteous & sober life. It is my aim ever to better myself, although I sometimes miserably, oh! miserably fail. I've got a temper, which wants conquering, & a heart, that often harbours most wicked & vile thoughts, cleansing. God strengthen me in my warfare & help me to live the life I have to live nobly & well, always prepared to die.

I have been a Sunday School Teacher for about 7 years, that has done me a power of good, & my feeble efforts at working for Christ on the Sunday, have often fortified me for the next week. One needs spiritual armour on the Quayside. I see more of what people term 'life' on the Quay, than I expected when I first went, but I am fortunate in being a good office, where I have been for 7 years (come 18th May). The best way to conquer evil thoughts is to work hard, at least,
```

193 Words

Azure:

```
god Feb 1882   
This is my bit birthday! I'm aman   
very significant that, as father days, Swill have
to think and act for myself now. Well, with 
God's help I will endeavour to do right Hive a 
truthful, righteous asober life. It is my aim 
ever to bett mapelf, although Isorhetimes 
miserably, oh miserably foul. lie got a 
temper, which wants conquering, Dad heart that 
often harbours most wicked Write thoughts, 
cleansing. God strengthen me in my warfare 
thell she to live the life I have to live nobly twell, 
always prepared to did. 

Is have been a Sunday School Teacher for   
about 4 years, that has done me a power of  
good, Imy feeble efforts at working for Christ 
low the Sunday, have often fortified me for 
the next weekd. ones needdo spirituall armour oh the 
Wayside. Isee more of what people term life on 
the away, than Sexplated when I first went, but 
Sam fortunate in being in a good office , where 
I have been for yyears / come 18th may). 
The best way to conquer edit thoughts is to work hard, at least, 
```
152 words correct = 79%

GCP:

```
grd Feb. 1982   
This is my 214 birthday! So am   
very significant thatli as father day, will have  
Etichoke land act for mopelfmou. Well, with  
Gods heff I will endeavour/t dorught Mive a  
truthful, righteous tsober life. It is my aim  
ever te letter mpelf, although Seorhetines  
miserables, oh! miserably fail. I've gota   
tempe, Thich warto coslabering, Mal heart that 
often harbouro most wicked Bila thought, 
dansing. Lod shengthens me in my was fase  
Shelf she to live the life I have to like no hd, Puell 

I have been a Sunday School Teacher for 
about y years, that has done me a powerlof 
good, ding feeble effato at working for Christ  
on the Sunday, have often fortified me for 
the next weeld. Onei neelde Sikituallarmour on the 
Luapide. Isee mme of what people term 'life on 
the way, than Iexpleted when I first went, but 
I am fortunate in being in a good office, where  
Shave been for Y yearo come 1st May). \"The best way 
to conquer evil thought in to work hard, at least, 
```

119 words correct = 62%

AWS:

```
grd Hef 1882
This 2/2 Lirthday! Sim
thal is my La ther vill aman. Have
y t thile uign ft as dayi
Lod and act for mou Mell wth
hel will endeawour t doreg ht rlive a
LuLh ighleos soher e L Itisa aime
ever l Le ttod mspey althhughe aohe times
serafla
```

14 words correct =7%

### SLV postcoard

Age: 132 years
Perceived difficulty: Easy (not cursive script)

http://search.slv.vic.gov.au/permalink/f/1cl35st/SLV_VOYAGER1671890

Trascript (guessed words mark in "")

```
Christmas. 1888. A page from "my" illustrated diary. Drawn by Uncle Charlie. Belgrave. Victoria. Australia. for Christopher Fry.
With every good wish for a h"app"y and prosperous future.
Out party from S"t. Mary's Fie"lds passing through Belgrave. Leicestershire to a meet of the Pychley "Hound"s.
```

Word cout of translatable words: 39

Notes:
* https://en.wikipedia.org/wiki/Church_of_St_Mary_de_Castro,_Leicester
* https://www.st-marysfields.leicester.sch.uk/
* https://en.wikipedia.org/wiki/Pytchley_Hunt


#### Azure:

```
Christmas. 1888. A page from T illustrated diary. Drawn by Uncle Charlie. Belgrave. Victoria. Australia. for Chridapher Fry.
With every good wish for a har y and prosperous future.
Our Party from Sri Lids passing Through Betgrave. Leicestershire to a meet of the Pychley
```
Words correct
* Total: 37/39 = 95%


#### Google:

```
Christmas. 1888. A page from illustrated diary.   7
Drawn by Uncle Charlie. Belgrave. Victoria. Australia. for Chruida pher Fry,  9
With every good wish for a har y and prosperous fuhre,  8
Our Party from Sm i ds passing through Belgrave Leicestershire to a meet of the Py chley  12
```

36 words correct = 92%

### AWS Rekognition:

```
Chrishmas. 1888. pace from illustrated diary. Drawn by uincle Chaplie. Belgrave. Victoria Australia. for Chridlapher Fry.
With every dood wish and prosperous fuhre.      
Our parly jrom passing Through graveleiceshershire te mectof Hhe Pychlay     
```

39 words correct = 49%




[slv-diary]: http://handle.slv.vic.gov.au/10381/236326
[slv-postcard]: http://search.slv.vic.gov.au/permalink/f/1cl35st/SLV_VOYAGER1671890
[swin-letter]: https://commons.swinburne.edu.au/items/cd53e247-3e39-458e-8582-9fa0a2a2e120/1/
[digital-fellowship]: https://www.slv.vic.gov.au/about-us/fellowships/digital-fellowship/current-fellow-justin-kelly
[biblio.ai]: https://biblio.ai
[tesseract]: https://github.com/tesseract-ocr/tesseract/wiki/FAQ#can-i-use-tesseract-for-handwriting-recognition