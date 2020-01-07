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

## Details

Thanks to the generous funding of the State Library of Victoria's (SLV) [Digital Fellowship program](digital-fellowship), I have been able to start work on the development of an open source service ( [biblio.ai](biblio.ai) ) for institutional libraries to use the latest in computer vision technologies to automatically enrich the metadata of their image collections.

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

Notes: unfortunately ABBYY is suitable only for form style block letter handwriting conversion and the leading open source OCR solution [Tesseract](https://github.com/tesseract-ocr/tesseract) is currently [not easily suitable for general handwriting recognition](tesseract). Both of these options have been excluded in the following tests.

{:.table .table-striped}
| Source |  Doc                 | Age (years) | Difficulty   | MS Azure  | Google Cloud | Amazon AWS |
|:------ |:------ |:------ |:-------- |:------ |:------ |:-------- |
| [Swinburne|Letter from aboard S.S. Shropshire](swin-letter)     | 100  | Med         |  78%     |  66%      |  4%          |
| [George Swinburne's diary, 1882 to 1886 page 4](swin-diary)     | 138  | Hard         |  79%         |  62%               |  7%                 |
| SLV diary         | 167  | Very Hard |  60%         |  75%               |  3%                 |
| SLV postcard   | 132  | Easy          |  95%         |  92%               |  49%               | 

MS Azure: 78%
Google Cloud: 74%
Amazon AWS: 16%

Scaled for difficulty: ( Easy = .5, Medium = 1, Hard = 1.5, Very Hard = 2)

MS Azure: 91
Google Cloud: 89
Amazon AWS: 11

[swin-letter]: https://commons.swinburne.edu.au/items/cd53e247-3e39-458e-8582-9fa0a2a2e120/1/
[digital-fellowship]: https://www.slv.vic.gov.au/about-us/fellowships/digital-fellowship/current-fellow-justin-kelly
[biblio.ai]: https://biblio.ai
[tesseract]: https://github.com/tesseract-ocr/tesseract/wiki/FAQ#can-i-use-tesseract-for-handwriting-recognition