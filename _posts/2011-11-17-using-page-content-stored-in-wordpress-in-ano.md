--- 
layout: post
title: "Using page content stored in Wordpress in another PHP/HTML page : How to"
published: true
date: 2011-11-17
tags: 
- php
- wordpress
posterous_url: http://blog.justin.kelly.org.au/using-page-content-stored-in-wordpress-in-ano
posterous_slug: using-page-content-stored-in-wordpress-in-ano
---
Sometimes I've needed to have page content stored in Wordpress so the users/client 
can easily edit the html content but display it in another non-Wordpress php/html website

Below is a simple way to grab Wordpress content and add it to your site

``` php page.php
<?php
 
    require( 'wp/wp-load.php' );
    require( 'wp-content.php' );
 
?>
 
<!-- add all you html here etc.. -->
<h2>
    <?php
       //print the page title using the Wordpress page ID
       echo get_the_title('190');
    ?>
</h2>
 
    <?php 
       //print the page content using the Wordpress page ID
       echo getPageContent('190');
    ?>
```

``` php wp-content.php
<?php
 
if(!function_exists('getPageContent'))
    {
        function getPageContent($pageId)
        {
            if(!is_numeric($pageId))
            {
                return;
            }
            global $wpdb;
            $sql_query = 'SELECT DISTINCT * FROM ' . $wpdb->posts .
            ' WHERE ' . $wpdb->posts . '.ID=' . $pageId;
            $posts = $wpdb->get_results($sql_query);
            if(!empty($posts))
            {
                foreach($posts as $post)
                {
                    return $post->post_content;
                }
            }
        }
    }
 
?>
```

Also install the disable auto format plugin to disable the way wordpress formats stored html

* http://wordpress.org/extend/plugins/ps-disable-auto-formatting/
