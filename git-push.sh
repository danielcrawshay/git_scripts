#!/bin/sh
commit_comment=$1
test -z $commit_comment && echo "Commit comment required." 1>&2 && exit 1
git add .
git commit -m "$commit_comment"
git push -u origin master
