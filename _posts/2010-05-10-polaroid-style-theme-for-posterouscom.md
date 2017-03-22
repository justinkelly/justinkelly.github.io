--- 
layout: post
title: Polaroid style theme for posterous.com
published: true
tags: posterous
---
If you have a simple photo blog on posterous.com below is the code for a simple 'polaroid' style theme for posterous

Refer image below for example of it in action

{% image_tag src="/img/polaroid.png" width="400" %}

``` html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{PageTitle}</title>
<link rel="icon" href="/images/favicon.png" type="image/x-png"/>

<style type="text/css">
* {border:0;padding:0;margin:0;}
img {border:0;}
.clear {clear:both;font-size:5px;}
.left {float:left;}
.right {float:right;}
.text-right {text-align:right;}
.center {text-align:center;}
.small {font-size:11px !important;}
.xsmall {font-size:10px;}
.xxsmall {font-size:9px;}
.normal {font-size:12px !important;}
.big {font-size:14px !important;}
.bigger {font-size:16px !important;}
.black {color:#000;}
.green1,.green1:hover {color:#7ba709;}
.green2,.green2:hover {color:#6f9904;}
.darkgray {color:#333;}
.strong {font-weight:bold;}
.absolute-right {position:absolute;top:0;right:0;}
.white {color:#fff;}
.red {color:#f00;}
body {
        /*background:#f8f7f2;*/
    background:#ebebeb;
    color:#8e8e8e;
    font-family:Helvetica,Arial,Sans-Serif;
    font-size:11px;
}
a { color:#585858; text-decoration:none; }
a:hover { color:#2d2d2d; }
.no-bull li {list-style:none;}
.no-ul,.reverse {text-decoration:none}
.no-ul:hover,.reverse:hover {text-decoration:underline !important}
li {margin:0;}

.container {
    margin:0 auto;
    position:relative;
    width:960px;
}

.png {
    background-image:url(http://posterous.com/themes/slate/global.png);
    background-repeat:no-repeat;
}

h1,.subtitle,h2,h3,h4 {
    font-family:"MyriadPro-Semibold","Myriad Pro","Helvetica Neue Light",Helvetica,Arial;
    font-weight:normal;
    letter-spacing:-0.5px;
}

h1,.subtitle,h3 {
    text-align:center;
}

h1 {
    font-size:24px;
}

    h1 a {
        color:#eee;
        display:inline-block;
        padding:2px;
        text-decoration:none;
    }
    
    h1 a:hover {
        color:#fff;
    }

.title {
    background:url(http://posterous.com/themes/slate/bg-h1.gif) repeat-x top #383838;
    min-height:35px;
    height:auto !important;
    height:35px;
}

.profile-block {
    background:url(http://posterous.com/themes/slate/bg-about.gif) repeat-x bottom #f4f4f4;
    min-height:198px;
    height:auto !important;
    height:198px;
}

    .external {
        margin-top:5px;
    }

    h3 {
        border-bottom:solid 1px #dfdfdf;
        color:#a4a4a4;
        font-size:24px;
        padding:10px 0;
        margin:0 auto;
        width:925px;
    }
    
    .about-utilities {
        border-top:solid 1px #fff;
        margin:0 auto;
        padding:15px 0;
        width:925px;
    }
    

    
    .tag-dropdown {
        left:100px;
        position:absolute;
    }
    
    .subscribe-dropdown {
        position:absolute;
        left:0;
    }
    
    .contributors-dropdown {
        position:absolute;
        left:170px;
        width:100px;
    }
    
        h4,h4 a {
            color:#888888;
            cursor:default;
            font-size:14px;
            position:relative;
            text-decoration:none;
        }
        
        .tag-dropdown h4 {
            z-index:6;
        }
        
        .subscribe-dropdown h4 {
            z-index:3;
        }
        
        .contributors-dropdown h4 {
            z-index:3;
        }
        
        .utilities h4 {
            display:inline-block;
        }
    
        .dropdown-arrow {
            background-position:0 -9px;
            display:inline-block;
            height:7px;
            position:relative;
            width:9px;
        }
        
        .tag-dropdown .dropdown-arrow {
            z-index:6;
        }
        
        .subscribe-dropdown .dropdown-arrow {
            z-index:3;
        }
        
        .contributors-dropdown .dropdown-arrow {
            z-index:3;
        }
    
        .tag-dropdown span.tags-list,.subscribe-dropdown span.subscribe-list,.contributors-dropdown span.contributors-list {
            display:none;
        }
    
        .tag-dropdown:hover span.tags-list {
            background:#fff;
            border:solid 1px #888;
            display:block;
            left:-5px;
            padding:5px 7px 10px;
            position:absolute;
            top:21px;
            width:120px;
        }
    
        .subscribe-dropdown:hover span.subscribe-list {
            background:#fff;
            border:solid 1px #888;
            display:block;
            left:-5px;
            padding:5px 7px 10px;
            position:absolute;
            top:21px;
            width:160px;
        }
        
        .contributors-dropdown:hover span.contributors-list {
            background:#fff;
            border:solid 1px #888;
            display:block;
            padding:5px 7px 10px;
            position:absolute;
            right:6px;
            top:21px;
            width:120px;
        }
        
        .tag-dropdown .h4-bg,.subscribe-dropdown .h4-bg,.contributors-dropdown .h4-bg {
            display:none;
        }
        
        .tag-dropdown:hover .h4-bg,.subscribe-dropdown:hover .h4-bg {
            background:#fff;
            border-top:solid 1px #888;
            border-right:solid 1px #888;
            border-left:solid 1px #888;
            display:block;
            height:24px;
            left:-1px;
            position:absolute;
            top:-25px;
        }
        
        .contributors-dropdown:hover .h4-bg {
            background:#fff;
            border-top:solid 1px #888;
            border-right:solid 1px #888;
            border-left:solid 1px #888;
            display:block;
            height:24px;
            right:-1px;
            position:absolute;
            top:-25px;
        }
        
        .tag-dropdown:hover .h4-bg {
            width:48px;
        }
        
        .subscribe-dropdown:hover .h4-bg {
            width:78px;
        }
        
        .contributors-dropdown:hover .h4-bg {
            width:98px;
        }
    
        .tag-dropdown:hover span.tags-list {
            z-index:5;
        }
        
        .subscribe-dropdown:hover span.subscribe-list {
            z-index:2;
        }
        
        .contributors-dropdown:hover span.contributors-list {
            z-index:2;
        }
        
        .tag-dropdown span.tags-list a,.subscribe-dropdown span.subscribe-list a,.contributors-dropdown span.contributors-list a {
            color:#888;
            display:block;
            text-decoration:none;
        }
        
        .tag-dropdown .tags-list a:hover,.subscribe-dropdown .subscribe-list a:hover,.contributors-dropdown .contributors-list a:hover {
            color:#555;
        }
        
            .contributors-list a * {
                display:inline-block;
                vertical-align:middle;
            }
        
            .tags-list .tag-link {
                margin-bottom:5px;
            }
            
            .tags-list strong {
                display:block;
                margin-bottom:2px;
            }
            
            .profile_ajax_reply {
                background:url(/images/favicon.png) no-repeat -1px -1px;
                margin-bottom:5px;
                padding-left:18px;
            }

        .subscribe-posterous,.subscribe-rss {
            padding-left:18px;
        }

            .subscribe-posterous {
                background:url(/images/favicon.png) no-repeat -1px -1px;
                margin-bottom:5px;
            }
        
            .subscribe-rss {
                background:url(/images/feed-icon-14x14.png) no-repeat;
            }
    
    .about-block {
        float:left;
        font-family:"Myriad Pro","Helvetica Neue Light",Helvetica,Arial;
        font-size:14px;
        line-height:1.5em;
        padding-bottom:15px;
        width:650px;
    }
    
        .about-block .about-contents a {
            color:#5a5a5a;
            padding:1px 2px;
        }
        
        .about-block .about-contents a:hover {
            color:#444;
        }
    
    .utilities {
        float:right;
        position:relative;
        width:240px;
    }
    
    .search {
        background-position:-20px 0;
        color:#777;
        font-size:11px;
        height:17px;
        margin:3px 0 25px;
        padding:6px 5px 1px 25px;
        width:209px;
    }
    
.main-column {
        /*margin:30px auto;*/
    margin:10px auto;
    width:530px;
}

    .search-section {
    }
    
    .search-section .search {
        margin:3px 0;
    }
    
    .search-section .searchbox_button {
        border:solid 1px #999;
        font-family:"Myriad Pro","Helvetica Neue Light",Helvetica,Arial;
        font-size:14px;
        padding:2px 20px;
    }

    .postunit {
        margin-bottom:50px;
        position:relative;
    }
    
        .postunit .edit-post .mini_commands {
            display:none;
        }
        
        .postunit:hover .edit-post .mini_commands {
            display:block;
            left:15px;
            position:absolute;
            top:-10px;
        }
        
        .fav_star {
            margin-top:9px !important;
        }
        
        h2 {
            margin-bottom:5px;
        }

        h2 a {
            background:#f3f3f0;
            border-bottom:solid 1px #e4e4e4;
            color:#909090;
            display:block;
            font-size:24px;
            padding:5px 15px;
            text-decoration:none;
            width:500px;
        }
        
        h2 a:hover {
            border-bottom:solid 1px #d6d6d6;
            color:#818181;
        }
        
        .post {
            margin-bottom:15px;
            padding:0 15px;
            width:500px;
        
        /*JK mods*/
            background:#FFFFFF none repeat scroll 0 0;
            border-bottom:2px solid #E0E0E0;
            border-right:2px solid #E0E0E0;
        
        }
        
        .post p,.post div,.post ol,.post ul {
            padding:5px 0;
        }
        
        .post,.post * {
            font-family:"Segoe UI","Myriad Pro",Helvetica,Arial;
            font-size:14px;
            line-height:1.5em;
        }
        
        .post ol,.post ul {
            margin-left:20px;
        }
        
        .post a {
            background:#e2e2e2;
            color:#7c7c7c;
            padding:1px 2px;
        }
        
        .post a:hover {
            background:#c0c0c0;
            color:#fff;
        }
        
        .post .posterousGalleryMainlink,.post a:hover.posterousGalleryMainlink {
            background:none;
        }
        
        .post a img {
            margin:0;
            padding:0;
        }
        
    .post-padd {
        padding:0 15px;
    }
    
    .post-brief {
        border-top:solid 1px #e4e4e4;
        margin:0 15px;
        padding:5px 0;
    }
    
        .post-brief a {
            color:#8E8E8E;
        }
        
        .post-brief a:hover {
            color:#333;
        }
    
        .socialish {
            float:right;
            padding:0 0 5px 10px;
        }
        
        .posterous_retweet_widget {
            display:inline-block;
            margin:-2px 10px 0;
        }
        
        a.posterous_retweet {
            color:#fff !important;
        }
        
        a.posterous_retweet:hover {
            background:#36cdff;
            color:#fff !important;
        }
        
        .taglist {
            margin-top:5px;
        }
        
        .post-tag {
            padding:0 3px;
        }
    
    div.commentunit {
        margin:0 0 10px;
    }

    div.posterous_comments h4, div.spanningheader h4 {
        font-size:14px;
        font-weight:normal;
    }
    
    .comment {
        background:#f3f3f0;
        border-top:solid 1px #e4e4e4;
        color:#8E8E8E;
        margin:10px 0;
        padding:15px;
    }
    
        .comment-by {
            text-align:right;
        }
        
            .comment-by a {
                color:#b8b8b8;
            }
            
            .comment-by a:hover {
                color:#929292
            }
        
        .posterousAddNewComment {
            background:#F3F3F0;
            border-top:solid 1px #e4e4e4;
            margin:15px;
            padding:0 15px 15px;
        }
        
            .posterousAddNewComment .comment {
                background:none;
                border-top:0;
                padding:0;
            }
            
            .posterousAddNewComment textarea {
                width:430px !important;
            }
        
            div.commentunit input[type="submit"] {
                border:solid 1px #999;
                font-family:"Myriad Pro","Helvetica Neue Light",Helvetica,Arial;
                font-size:16px;
                padding:2px 20px;
            }
            
        .post-comment-area {
            background:#F3F3F0;
            border-top:solid 1px #e4e4e4;
            margin-top:10px;
            padding:15px;
        }
        
            .post-comment-area .comment_avatar {
                margin:25px 15px 0 0;
            }
            
            .post-comment-area {
                background:none;
                border-top:0;
                padding:0;
            }
            
            .post-comment-area .commentunit {
                margin:5px auto 0;
                width:500px;
            }
            
            .post-comment-area h4 {
                background:#F3F3F0;
                margin-top:25px;
                padding:15px 15px 0;
                width:485px;
            }
            
            .post-comment-area form {
                background:#F3F3F0;
                padding:0 15px 15px;
            }
        
    .location-map {
        padding:10px 15px;
    }
    
    .pagination {
        text-align:center;
        font-size:18px;
            
         background:#F3F3F0 none repeat scroll 0 0;
        border-bottom:1px solid #E4E4E4;
        color:#909090;
        padding:5px 15px;

    }
    
        .pagination span {
            margin-right:3px;
        }
    
        .pagination .current {
            font-weight:bold;
        }

        .pagination .disabled {
            color:#aaa;
        }

        .pagination a {
            background-color:#fff;
            border:solid 1px #eee;
            padding:2px 5px;
        }

        .pagination a:hover {
            border:solid 1px #ddd;
        }
    
        .by-line {
            color:#bbb;
            padding:50px 15px 20px;
            text-align:right;
        }
        
            .by-line a {
                color:#bbb;
                text-decoration:underline;
            }
            
            .by-line a:hover {
                text-decoration:none;
            }
        
    .back-to-blog {
        padding-bottom:10px;
    }
    
    .posterousPrivateBox {
        position:absolute;
        left:0;
        top:-10px;
    }
            
        .map {
            height:250px;
        }
</style>
<!--[if IE 8]>

<style type="text/css">

    .tag-dropdown:hover .h4-bg {
        width:44px;
    }
    
    .subscribe-dropdown:hover .h4-bg {
        width:70px;
    }
    
    .contributors-dropdown:hover .h4-bg {
        width:95px;
    }        
    
    .contributors-dropdown:hover span.contributors-list {
        right:12px;
    }

</style>

<![endif]-->
<!--[if IE 7]>

<style type="text/css">

    .utilities h4,.dropdown-arrow,.contributors-arrow {
        float:left;
    }
    
    .dropdown-arrow {
        margin:7px 0 0 2px;
    }
    
    .tag-dropdown:hover .h4-bg {
        width:47px;
    }
    
    .subscribe-dropdown:hover .h4-bg {
        width:78px;
    }
    
    .contributors-dropdown:hover .h4-bg {
        width:96px;
    }
    
</style>

<![endif]-->

</head>
<body>
{block:PosterousBar direction="left" translucent="true"}{/block:PosterousBar}



                        
    <div class="main-column">

    {block:Show}
        <div class="back-to-blog">
            <a href="{SiteURL}">« Back to blog</a>
        </div>
    {/block:Show}

    {block:SearchPage}
        <div class="search-section">
                <h2>
                    {block:SearchResultOne}
                        One result found searching for
                    {/block:SearchResultOne}
                    
                    {block:SearchResultMany}
                        {SearchResultCount} results found searching for
                    {/block:SearchResultMany}
                    
                    {block:SearchResultNone}
                        No results found searching for
                    {/block:SearchResultNone}
                </h2>
                <form method='get'>
                    <input type='hidden' name='sort' value="{SearchSort}"/>
                    <input type='text' name='search' value='{SearchQuery}' class="png search" id="searchbox"/>
                    <input type='submit' value='Search' class="searchbox_button" id="searchbox_button"/>
                    &nbsp;&nbsp;<a href="{CurrentURL}" class="xsmall">clear</a>
                </form>
            
                <ul class="searchsort" style="color: #999; font-size: 10px;">
                        <li style="margin-left: 0px;">Sort by</li>
                        <li>{block:SearchSortBestmatch}<b>Best match</b>{Else}<a href="{CurrentURL}?search={SearchQuery}&sort=bestmatch">Best match</a>{/block:SearchSortBestmatch}</li>
                        <li>{block:SearchSortRecent}<b>Most recent</b>{Else}<a href="{CurrentURL}?search={SearchQuery}&sort=recent">Most recent</a>{/block:SearchSortRecent}</li>
                        <li>{block:SearchSortInteresting}<b>Most interesting</b>{Else}<a href="{CurrentURL}?search={SearchQuery}&sort=interesting">Most interesting</a>{/block:SearchSortInteresting}</li>
                </ul>
                <br/>
                <a href="{PosterousURL}/explore/?search={SearchQuery}" style="font-size: 10px;">Search all of posterous for <b>{SearchQuery}</b> »</a>

        </div>
        <br style="clear: left;"/>
    {/block:SearchPage}
    
    
        {block:Posts}
            <div id="postunit_{PostID}" class="postunit">
                <div id="post_control_{PostID}"></div>
                {block:Private}
                        <p class="private-post">
                            <a href="{Permalink}" class="tooltip_link"><img src="/images/icons/lock12.png" height="12" alt="Private" width="12">
                                
                                    <b>Private Post</b>

                                    This post has a secret URL and not linked on your public blog. Send the secret URL to share it with anyone.
                                
                            </a>
                        </p>
                {/block:Private}

                {block:EditBox}
                        <div class="edit-post">
                            {EditBoxContents}&nbsp;
                        </div>
                {/block:EditBox}
                {block:SMS}
                    <div class="sms_notice">Posted from my mobile phone (SMS)</div>
                {/block:SMS} 

                <div id="post_{PostID}">
                
                    {block:Title}<h2 id="posttitle_{PostID}"><a href="{Permalink}">{Title}</a></h2>{/block:Title}
                    <div class="post">
                        {Body}
                    </div><!-- /.post -->
                    
                    

                    <div class="post-brief">
                        {block:Comments}
                            {block:CommentsList action_id='comment_link_{PostID}' target_element='post_commentarea_{PostID}'}
                                    <div class="socialish">
                                        {block:Retweet}
                                            <img src="/images/icons/services/twitter11.png" style="vertical-align: middle; position: relative; top: -2px;" /> 
                                            <span id="retweet_count_{PostID}">
                                              <a href="{RetweetLink}">
                                                {NumRetweets} 
                                                mentions
                                              </a>
                                            </span>
                                            {RetweetButton}
                                        {/block:Retweet}
                                        
                                        <a href="{Permalink}#comment">{CommentCount} Comment{CommentCountPluralized}</a>                                    </div>
                            {/block:CommentsList}
                        {/block:Comments}
                        
                        {block:NewDayDate}Posted <a href="{Permalink}">{TimeAgo}</a>{/block:NewDayDate}
                        
                        {block:Author}{block:AuthorUser}by <a href="{AuthorURL}">{AuthorName}</a>{/block:AuthorUser}{/block:Author}
                        
                        {block:PostLocations}
                            <span id="location_collapsed_{PostID}">from <a href="#">{LocationsSummary}</a></span>
                        {/block:PostLocations}                        

                        {block:Show} 
                            {block:TagList}
                                <div class="taglist">
                                    Filed under:
                                  {block:TagListing}
                                    <a href="{TagLink}" class="post-tag">{TagName}</a>
                                  {/block:TagListing}
                                 </div>
                            {/block:TagList}
                        {/block:Show} 
                        
                    </div>
                    
                    
                        <div class="clear"></div>

                        {block:Comments}
                            <div id="post_commentarea_{PostID}" class="post-comment-area">
                                {block:CommentsShow}
                                        
                                            <a name="comment" class="right" style="padding-right: 15px;">{CommentCount} Comment{CommentCountPluralized}</a>
    
                                        {CommentCode}
                
                                            <h4>Leave a comment...</h4>
                                        {NewCommentCode}                
                
                                {/block:CommentsShow}
                            </div>
                        {/block:Comments}
                            
                                                    
                        {block:PostLocations}
                            <div class="location-map" style="display: none;" id="post_location_expanded_{PostID}">
                                <div class="map">
                                {MapIframe}
                                </div>
                                <div class="location-details">
                                  <b>Posted from</b><br/>
                                  {block:PostLocation uniq_by='summary'}
                                      {LocationSummary}<br/>
                                  {/block:PostLocation}
                                  <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        {/block:PostLocations}
                        
                        {block:ShowOnClick action_id='post_location_expander_{PostID}' hidden_div='post_location_expanded_{PostID}' to_hide_id='location_collapsed_{PostID}'/}
                    
                </div><!-- /#post__ -->
                
                {block:Favorite hover_id='postunit_{PostID}' position_id='post_{PostID}'/}  
                
            </div><!-- /.postunit -->
        {/block:Posts}        
        
        {block:Pagination/}
        
          <img src="http://c.statcounter.com/5410797/0/8f3b00c6/1/">
        
    </div><!-- /.main-column -->
</body>
</html>
```