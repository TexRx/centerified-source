#!/bin/bash
set -e
jekyll build
cd ./source
git add -A :/
message = "Site updated at #{Time.now.utc}"
system "git commit -m #{message.inspect}"
git push origin gh-pages