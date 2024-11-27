#!/bin/bash
hugo -t hugo-coder # Build the site with the Coder theme
cd public
git init
git add .
git commit -m "Deploy site"
git branch -M gh-pages
git remote add origin https://github.com/astonishedrobo/astonishedrobo.github.io.git
git push -f origin gh-pages
