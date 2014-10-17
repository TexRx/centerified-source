#!/bin/bash
set -e
jekyll build
cd ./source
git add -A :/
message="Site updated: "
message+=`printf "%s %s" "$foo" "\`date\`"`
git commit -m "$message"
git push origin gh-pages