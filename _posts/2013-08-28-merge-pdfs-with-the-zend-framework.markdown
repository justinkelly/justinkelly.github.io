---
layout: post
title: "Merge PDFs with the Zend Framework"
date: 2013-08-28 05:37
comments: true
categories: [Zend Framework, PHP]
---

I've used a number of PHP libraries to handle creation of PDFs but only
recently needed to merge existing PDF files via PHP.

There are a couple of existing libraries to handle this, the previously popular pdfmerger 
script at codeplex has become unmaintained. Currently using the [Zend Framework][zf] is the best way to 
merge PDFs.

Using the PDF component of the Zend Framework is suprisingly easy, just load in the PDFs, clone the pages
and save as a new PDF (or display in the browser).

Here's the code to merge 2 existing PDFs. Its easy enough to add more PDFs or dynamic content using
Zend PDF or [tcpdf][tcpdf]

*Note: This is using Zend Framework version 1*

_PDF merge with Zend - pdf_merge_zend.pph_
{% highlight php %}
<?php
$path ="lib/";
set_include_path(get_include_path() . PATH_SEPARATOR . $path);
require_once 'lib/Zend/Pdf.php';

// LOAD PDF DOCUMENTS
$pdf1 = Zend_Pdf::load('first.pdf');
$pdf2 = Zend_Pdf::load('second.pdf');
// WE WILL MERGE OUR TWO PDF FILES INTO A NEW ZEND_PDF OBJECT
$pdfMerged = new Zend_Pdf();

// ADD ALL PAGES FROM THE FIRST PDF TO OUR NEW DOCUMENT
foreach($pdf1->pages as $page){
  $clonedPage = clone $page;
  $pdfMerged->pages[] = $clonedPage;
}
// ADD ALL PAGES FROM THE SECOND PDF TO OUR NEW DOCUMENT
foreach($pdf2->pages as $page){
  $clonedPage = clone $page;
  $pdfMerged->pages[] = $clonedPage;
}
unset($clonedPage);

// SEND THE MERGED PDF DOCUMENT TO BROWSER
//header('Content-type: application/pdf');
//echo $pdfMerged->render();

//save to a file
$pdfMerged->save('out/3.pdf');
?>
{% endhighlight %}

[zf]: http://framework.zend.com
[tcpdf]: http://www.tcpdf.org
