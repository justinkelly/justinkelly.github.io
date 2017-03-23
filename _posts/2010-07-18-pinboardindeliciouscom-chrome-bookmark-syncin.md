---
layout: post
title: "Pinboard.in/Delicious.com -> Chrome bookmark syncing : How to"
published: true
tags: chrome pinboard.in
---
Since Chrome was first released I wanted an easy way to get my 
Delicious.com and Pinboard.in bookmarks syncing to Chrome's internal bookmarks.  

Why ? So I could just type stuff in the address bar and it would search my online bookmarks.

Given that the delicious chrome extension is crap and pinboard.in doesn't
have one that integrates with the internal bookmarks i created a simple PHP script to make it happen

To sync your pinboard.in or delicious.com bookmarks to chrome follow the below steps

1. Install [RSS Live Links](https://chrome.google.com/extensions/detail/hcamnijgggppihioleoenjmlnakejdph)
1. Stick the below PHP script on a server somewhere and adjust the 3 config options for your bookmarking service
1. In chrome go to the options section of RSS Live Links and add in the path to the php script in Step 2
1. Save the options 
1. Add a bookmarks folder call 'RSS Live Links' into your Chrome bookmarks - bookmarks toolbar is best

_pinboard_to_chrome.php_
``` php
<?php
 
/** Config section - start **/  
 
$bookmark_user = "--your-username-";
$bookmark_pass = "--your-password";
$bookmark_service = "pinboard.in"; // pinboard.in or delicious.com/del.icio.us
    
/** Config section - end **/
 
 
$url = "https://" . $bookmark_user . ":" . $bookmark_pass . "@api." . $bookmark_service . "/v1/posts/all";
$local_file = $bookmark_service . "." . $bookmark_user . ".xml";
 
/** Functions - start **/
 
function cURLcheckBasicFunctions()
{
    if( !function_exists("curl_init") &&
        !function_exists("curl_setopt") &&
        !function_exists("curl_exec") &&
        !function_exists("curl_close") ) return false;
    else return true;
}
 
/*
 * Returns string status information.
 * Can be changed to int or bool return types.
 */
function cURLdownload($url, $file)
{
  if( !cURLcheckBasicFunctions() ) return "UNAVAILABLE: cURL Basic Functions";
  $ch = curl_init();
  if($ch)
  {
    $fp = fopen($file, "w");
    if($fp)
    {
      if( !curl_setopt($ch, CURLOPT_URL, $url) )
      {
        fclose($fp); // to match fopen()
        curl_close($ch); // to match curl_init()
        return "FAIL: curl_setopt(CURLOPT_URL)";
      }
      if( !curl_setopt($ch, CURLOPT_FILE, $fp) ) return "FAIL: curl_setopt(CURLOPT_FILE)";
      if( !curl_setopt($ch, CURLOPT_HEADER, 0) ) return "FAIL: curl_setopt(CURLOPT_HEADER)";
      if( !curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0) ) return "FAIL: curl_setopt(CURLOPT_SSL_VERIFYPEER)";
      if( !curl_exec($ch) ) return "FAIL: curl_exec()";
      curl_close($ch);
      fclose($fp);
      return "SUCCESS: $file [$url]";
    }
    else return "FAIL: fopen()";
  }
  else return "FAIL: curl_init()";
}
 
//strip crap from xml to amke rss all happy
function XMLClean($string) {
    return preg_replace('/&(?![A-Za-z0-9#]{1,7};)/','&amp;',$string);
}
 
/** Functions - end **/
 
//get teh file
cURLdownload($url, $local_file);
 
//set the rss header
header("Content-Type: application/rss+xml; charset=ISO-8859-1");
 
 
$rssfeed = '<?xml version="1.0" encoding="ISO-8859-1"?>';
$rssfeed .= '<rss version="2.0">';
$rssfeed .= '<channel>';
$rssfeed .= '<title>Pinboard.in links</title>';
$rssfeed .= '<link>http://blog.justin.kelly.org.au/pinboardindeliciouscom-chrome-bookmark-syncin</link>';
$rssfeed .= '<description>Pinboard.in links as rss</description>';
$rssfeed .= '<language>en-us</language>';
#$rssfeed .= '<copyright>Copyright (C) 2009 mywebsite.com</copyright>';
 
//get the xml and convert to rsss items
$xml = simplexml_load_file($bookmark_service . "." . $bookmark_user . ".xml");
foreach($xml->post as $posts)
{
    $rssfeed .= '<item>';
    $rssfeed .= '<title>' . XMLClean($posts['description']) .  ' | ' . XMLClean($posts['tag']) .'</title>';
    $rssfeed .= '<description>' . XMLClean($posts['extended']) . '</description>';
    $rssfeed .= '<link>' . XMLClean($posts['href']) . '</link>';
    $rssfeed .= '<guid>' . XMLClean($posts['href']) . '</guid>';
    $rssfeed .= '<pubDate>' . date("D, d M Y H:i:s O", strtotime($posts['time'])) . '</pubDate>';
    $rssfeed .= '</item>';
}
 
$rssfeed .= '</channel>';
$rssfeed .= '</rss>';
 
echo $rssfeed;
?>
```

Done, now the Chrome will grab your bookmarks and sync to the bookmark folder every few minutes