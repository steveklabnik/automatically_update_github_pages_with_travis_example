#!/bin/bash

rev=$(git rev-parse --short HEAD)

cd _site

git init
git config user.name "Steve Klabnik"
git config user.email "steve@steveklabnik.com"

git remote add upstream "https://$GH_TOKEN@github.com/steveklabnik/automatically_update_github_pages_with_travis_example.git"
git fetch upstream && git reset upstream/gh-pages

# echo "example.com" > CNAME

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:gh-pages
