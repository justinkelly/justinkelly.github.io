---
layout: post
title: "Curl JSON function for PHP"
date: 2012-06-27 10:07
comments: true
categories: php
---

As I'm always working with various JSON based APIs in PHP which don't have dedicated libraries, heres my simple 
'default' Curl JSON function for PHP.

``` php curl_json.php
<?php
 
        function curl_json($base_url='',$query='',$json=true){
 
                //set the url to use
                $target_url = 'http://www.mydomain.com/json_script.json';
                $url == ($base_url='' ? $target_url : $base_url)  ;
 
                //set default json
                $default_json ='[you json string here]';
                $json_query == ($query='' ? $query : $default_json) ;
                
                //http auth
                $username = 'your_username';  // authentication
                $password = 'your_password';  // authentication
 
                $ch = curl_init();
                $headers = array();
                if($json) {
                        $headers[] = 'Content-type: application/json';
                        $headers[] = 'X-HTTP-Method-Override: GET';
                }
                $options = array(
                                CURLOPT_URL => $url,
                                CURLOPT_RETURNTRANSFER => true,
                                CURLOPT_USERPWD => $username . ":" . $password,   // authentication
                                CURLOPT_HTTPHEADER => array($headers),
                                CURLOPT_POSTFIELDS => $json_query,
                                CURLOPT_TIMEOUT => 5,
                                CURLOPT_RETURNTRANSFER => 1,
                                CURLOPT_HEADER => 0,
                                CURLOPT_FOLLOWLOCATION => 1,
                                CURLOPT_MAXREDIRS => 3,
                                CURLOPT_USERAGENT => 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)'
                                );
                curl_setopt_array($ch,$options);
                $response = curl_exec($ch);
                if($response === false || curl_error($ch)) {
                        curl_close($ch);
                        return false;
                } else {
                        curl_close($ch);
                        return json_decode($response, true);
                }
        }
?>
```

Just alter the target url, auth setting, and set any default json query and your good to go.  
