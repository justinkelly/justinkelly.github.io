---
layout: post
published: true
comments: true
title: Making audio recording accessible to people with hearing impairments.
tags: ''
---
##  Summary

For automated transcription of audio recordings to text, with the focusing on accessibility and historical recording - Azure from Microsoft currently is the best performing cloud service

## Introduction

As part of my State Library of Victoria Digital Fellowship - [https://biblio.ai](https://biblio.ai) I've been working on using the latest cloud  based AI technologies to make to a libraries digital items (images, scanned historical documents, video, etc) accessible to people with various disabilities - such as automated transcription of historical handwritten documents to text - to enable visually impaired people to use/understand/access documents that were previously stored as images and currently transcribed - thus totally unusable for anyone with a visual impairment. 

My previous blog post goes into details to compare various handwriting o text services available: [https://justin.kelly.org.au/benchmarking-computer-vision-transcription-of-historical-handwritten-documents/](https://justin.kelly.org.au/benchmarking-computer-vision-transcription-of-historical-handwritten-documents/)
My current focus is how to make audio recordings (such as historical recordings or oral histories - that state and national libraries collect) accessible to people with hearing impairments. Prior work in this area by the [New Your Public Library](http://transcribe.oralhistory.nypl.org) uses speech-to-text software software to convert audio to text, and provide an interface for a user to updated transcription. 

![NYPL]({{site.baseurl}}/img/2021-NYPL.png)


The original NYPL project started from a grant in 2015 from the [Knight Foundation](https://knightfoundation.org/grants/together-we-listen). Given that even in the last year there has been big improvements in live audio to text (such as MS Teams and Zoom automated live captions) it's as great time to 1. review the accuracy of the current best audio to text services and 2. if they are accurate enough, can libraries not run crowdsourced editing projects - as just use the automated transcripts as is. 

The current leaders in audio to text are Azure from Microsoft (which powers the MS Team living caption feature, [Otter.ai](http://otter.ai) (heavily used and integrated with Zoom) and Google Cloud Platform (GCP). Taking a randomly selected audio recording from the State Library of South Australia - Oral History collection - which happened to be an interview with Leonard Cohen - details below:

- "Interview with Leonard Cohen [sound recording] Interviewer: Nigel Russell [Excerpt]"
- [https://digital.collections.slsa.sa.gov.au/nodes/view/6368?keywords=](https://digital.collections.slsa.sa.gov.au/nodes/view/6368?keywords=)



## Azure


```
Well, this is a lyric that is based on an old Chinese text worked on the translation with a lesson Oriental scholar. It's originally a training manual for monks and the metaphor that's used as an ox herder who is lossed his ox and I translated into a western. Cowboy style. Goes like this. Say a prayer for the cowboy. His mirrors run away and he'll walk till he finds her his darling, his stray. But the rivers in flood and the roads are awash and the bridges break up in the panic of loss and there's nothing to follow. There's nowhere to go she's gone like the summer she's gone like this snow and the crickets are breaking his heart with their song as the day caves in and the night is all wrong. Did he dream? Was it she who went galloping past and bent down the Fern and broke open the grass and printed the mud with the iron and the gold that he nailed to her feet when he was the Lord? And although she goes grazing a minute away, he tracks for all night and he tracks her all day. Oh, blind, her presence, except to compare his injury here with her punishment there. 
```

* Mistakes = 4 words out of 214
* Accuracy = 98% on spoken American English 

### Otter.ai


```
This is a lyric that is based on an old Chinese text. Worked on the translation with a    an oriental scholar. It's originally a training manual for monks. And the metaphor that's used is an ox herder who has lost his ox and I translate it into a Western cowboy style. goes like this. Say a prayer for the cowboy. His mirrors are in a way and they'll walk till he finds her. His darling is stray. But the river is in flood and the roads are awash and the bridges break up in the Panic of loss. And there's nothing to follow. There's nowhere to go. She's gone like the summer. She's gone like the snow and the crickets are breaking as hard with their song as the day caved in. And the night is all wrong. Did he dream was it she who went galloping past and bent down the fern and broke open the grass and painted the mud with the iron and the gold that he nailed to her feet when he was the Lord. And although she goes grazing a minute away, he tracks for all night and he tracks all day or blind   her presence except to compare his injury here with her punishment there.
```

* Mistakes = 8 words out of 214
* Accuracy = 96% on spoken American English 

### Google GCP


```
all this is a Lyrica that is based on an old Chinese text I worked on the translation with a o
Sun Oriental scholar it's originally a training manual for monks and the metaphor that used is an ox herder who has lost his ox-eye translated into a a western cowboy style.    goes like this. say a prayer for the Cowboys mirrors run away and I walked Ali finds her his darling his stray but the rivers in flood in the roads are the wash and the bridge is break up in the Panic of loss and there's nothing to follow there's nowhere to go she's gone like the summer she's gone like the snow and the Crickets are breaking his heart with their song as the day caves in and the night is all wrong
did he dream was it she   went Galloping past and bent down the fern and broke open the grass and printed the mud with the iron in the gold that he nailed to her feet when he was the Lord
and although she goes grazing a minute away he tracks her all night and he tracks for all day o blind and her presence except to compare his injury here with their punishment there"
```

* Mistakes = 14 mistaken words out of 214
* Accuracy = 93% on spoken American English 

### Manually

```
Ah, this is a lyric that is based on an old Chinese text, ah worked on the translation with a with a oriental scholar. It's originally a training manual for monks and the metaphor that's used is an ox herder who has lost his ox and I translated into a western cowboy style ah it goes like this. Say a prayer for the cowboy his mirrors run away and he'll walk till he find her, his darling, his stray, but the rivers in flood and the roads are awash and the bridges break up and the panic of loss  and there's nothing to follow, there's nowhere to go, she's gone like the summer, shes gone like the snow, and crickets are breaking his heart with their song, as the day caves in and the night is all wrong. Did he dream? was it she who went galloping past and bent down the fern and broke open the grass and printed the mud with the iron and the gold, that he nailed to her feet when he was the lord. And although she goes grazing a minute away, he tracks her all night and he tracks her all day. Oh, blind to her presence except to compare his injury here with her punishment there.
```

It took me about 30 minuets to go through the audio a number of times on super slow speed to transcribe the audio manually to text :( and I actually had to refer the the MS Azure transcription  to check a few words I had difficulties with

## Conclusion

All 3 services can do real-time transcriptions - meaning its took them about 1:30 minutes to transcribe(including grammar) the 1:30 of audio reording

