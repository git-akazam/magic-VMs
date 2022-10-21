#!/bin/bash


PID=$!
echo "update" && cd dutyblog/ && code . --no-sandbox --user-data-dir & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait








# Customize

# Now let’s change the _config.yml to make the blog more personal.

# Here’s mine after modifying it:

#   title: DutyLabs blog
#   email: contact@dutylabs.ro
#   description: My awesome description
#   baseurl: ""
#   url: ""
#   twitter_username: dutylabs
#   github_username:  dutylabs
#   # Build settings
#   markdown: kramdown
#   theme: minima
#   plugins:
#     - jekyll-feed