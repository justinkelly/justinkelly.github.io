--- 
layout: post
title: "PHP: Strip null entries from an array : how to"
published: true
date: 2011-07-10
categories: 
- php
posterous_url: http://blog.justin.kelly.org.au/php-strip-null-entries-from-an-array-how-to
posterous_slug: php-strip-null-entries-from-an-array-how-to
---
For a while i've had issues with certain db update queries in php - particularly where image uploads are involved. 
My original code looked like

``` php
<?php
 
//db update query from form with image upload fields
 
$data = array(
    'company_name' => $form->getValue('company_name'),
    'company_image' => $form->getElement('company_image')->getValue(),
    'company_logo' => $form->getElement('company_logo')->getValue(),
    'website' => $form->getValue('website')
);
 
$this->update($data, 'id = '. (int)$id);
 
?>
```

but using the above code would over write the image fields in the db if the user didn't upload a new image 

to get around this problem i wrote an `is_null` check on the image  fields and pretty much write the `$data` array twice 

- once with the image fields and once without 
- as i couldn't put php code in the middle of the array
- this is a pretty crappy solution so i sat down and figured out a  simple way to strip null entries from an array 
- see code below


``` php strip_null_array_entries.php
<?php
 
/* 
 * use this function to strip null array entries from an array
 * useful when doing a db update with pdo/zend_db_table etc..
 */
 
function strip_null_array_entries($values){
  $array = array();
  foreach($values as $key=>$value){
    if( ($value!=='') AND (!is_null($value)) ) $array[$key] = $value;
  }
  return $array;
}
 
?>
```
now i don't need to write the `$data` array twice - i can just use

{% highlight php %}
<?php

$this->update(strip_null_array_entries($data), 'id = '. (int)$id);

?>
{% endhighlight %}
