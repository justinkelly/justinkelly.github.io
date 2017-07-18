#!/usr/bin/env bash set -e # halt script on error

curl -X POST -d '{}' https://api.netlify.com/build_hooks/"$NETLIFY_BLOG_API_KEY"

curl -X POST -d '{}' https://api.netlify.com/build_hooks/"$NETLIFY_SITE_API_KEY"
