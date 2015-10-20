---
layout: post
title: "Moved from Posterous to Octopress + p.ostero.us"
date: 2012-03-23 05:04
comments: true
tags: [p.ostero.us, posterous.com]
---
I've been a long term [posterous.com](posterous.com) user, but since they started messing with the core concept
 of posterous by introducting 'groups' and then pivoting to be 'spaces' I've had an uneasy feeling being hosted with them. What are these guys up to?
 What happend to the posterous I used to love using?

The last straw was the purchase of posterous by twitter as a 'talent acquistion' - basically meaning posterous will now be in maintenane mode - no further development

I've kept a close eye on the progress of [jekyll](http://jekyllrb.com/) and [octopress](http://octopress.org/) and have finally made the move.  This blog is now built using octopress 

## Migration
My main conern about the migration was to maintain the urls for all my previous posts,  the currentl posterous->jekyll doesnt maintain the url slugs.

To make this work I edited the posterous import script - refer new version below 

Also the octopress permalinks format needed to change to just :title.  Now any links to my old posterous hosted blog will auto forward to this blog.  Below is the updated import and config script

``` ruby posterous.rb
require 'rubygems'
require 'jekyll'
require 'fileutils'
require 'net/http'
require 'uri'
require "json"
 
# ruby -r './lib/jekyll/migrators/posterous.rb' -e 'Jekyll::Posterous.process(email, pass, api_key, blog)'
 
module Jekyll
  module Posterous
    def self.fetch(uri_str, limit = 10)
      # You should choose better exception.
      raise ArgumentError, 'Stuck in a redirect loop. Please double check your email and password' if limit == 0
 
      response = nil
      Net::HTTP.start('posterous.com') do |http|
        req = Net::HTTP::Get.new(uri_str)
        req.basic_auth @email, @pass
        response = http.request(req)
      end
 
      case response
        when Net::HTTPSuccess     then response
        when Net::HTTPRedirection then fetch(response['location'], limit - 1)
        when Net::HTTPForbidden   then
          retry_after = response.to_hash['retry-after'][0]
          puts "We have been told to try again after #{retry_after} seconds"
          sleep(retry_after.to_i + 1)
          fetch(uri_str, limit - 1)
        else response.error!
      end
    end
 
    def self.process(email, pass, api_token, blog = 'primary', tags_key = 'categories')
      @email, @pass, @api_token = email, pass, api_token
      FileUtils.mkdir_p "_posts"
 
      posts = JSON.parse(self.fetch("/api/2/sites/#{blog}/posts?api_token=#{@api_token}").body)
      page = 1
 
      while posts.any?
        posts.each do |post|
          title = post["title"]
         # slug = title.gsub(/[^[:alnum:]]+/, '-').gsub(/^-+|-+$/, '').downcase
          posterous_slug = post["slug"]
          slug = posterous_slug[0..44]
          date = Date.parse(post["display_date"])
          content = post["body_html"]
          published = !post["is_private"]
          name = "%02d-%02d-%02d-%s.html" % [date.year, date.month, date.day, slug]
          #name = "%s.html" % [slug]
 
          tags = []
          post["tags"].each do |tag|
            tags.push(tag["name"])
          end
 
          # Get the relevant fields as a hash, delete empty fields and convert
          # to YAML for the header
          data = {
             'layout' => 'post',
             'title' => title.to_s,
             'published' => published,
             'date' => date,
             tags_key => tags,
             'posterous_url' => post["full_url"],
             'posterous_slug' => posterous_slug
           }.delete_if { |k,v| v.nil? || v == ''}.to_yaml
 
          # Write out the data and content to file
          File.open("_posts/#{name}", "w") do |f|
            puts name
            f.puts data
            f.puts "---"
            f.puts content
          end
        end
 
        page += 1
        posts = JSON.parse(self.fetch("/api/2/sites/#{blog}/posts?api_token=#{@api_token}&page=#{page}").body)
      end
    end
  end
end
```

``` yaml _config.yml
# To maintain your posterous links use the below permalink config
# ----------------------- #
#    Jekyll & Plugins     #
# ----------------------- #
 
permalink: /:title/
```

##p.ostero.us

My [http://blog.justin.kelly.org.au](http://blog.justin.kelly.org.au) blog is now hosted with octopress at [p.ostero.us](http://p.ostero.us)

[p.ostero.us](http://p.ostero.us) is a new service that I've setup specially designed to help [posterous.com](posterous.com) users to move to octopress.
Octopress is an amazing blog engine but unless your comfortable using the commandline and messing with ruby got its not ganna work out for you.  

This is where [p.ostero.us](http://p.ostero.us) comes in. I'm bringing the beauty and simplicity of the original posterous back combined with the awesomeness of octopress.  You can email your posts in (all in markdown), add and update posts via our minimal web ui 
or hook [p.ostero.us](http://p.ostero.us) up to pull markdown formatted posts from your github repo 


###GitHub
Currently you can easily enought host an octopress blog on github but you still have to mess with ruby/rake to create posts.  With [p.ostero.us](http://p.ostero.us) you just point it at a repo folder that contents your posts - no need to run rake commands
.  Just use the normal octopress blog template and its all good to go

##No lock in

I always had the uneasy feeling of being locked into posterous - even though they have a good api - i can't just grab the how blog (theme included) and host of my own server..

With [p.ostero.us](http://p.ostero.us) you can 1 click export/download your site - full octopress install and happily self host your blog any time you want

##Money
Another problem with posterous.com was that there was no way to actually pay for the service.  
Theres a great post over at [pinboard.in](http://blog.pinboard.in/2011/12/don_t_be_a_free_user/) that details whats wrong with this.  

Eventfully they are going to have to make a return for their investor and with no real income fomr users this means getting purchased.

[p.ostero.us](http://p.ostero.us) is a user pays site with a model similar to [pinboard.in](http://pinboard.in), so you know the service is going to be around in the future and not goign to just get 'turned off' by twitter

##Conclusion
If your a posterous.com user looking to move now twitter is about to kill it off check out [p.ostero.us](http://p.ostero.us) 


