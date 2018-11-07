#!/bin/bash

git checkout master
pipenv run jupyter nbconvert --execute --to html OpticalIllusions.ipynb
git checkout gh-pages
mv -f OpticalIllusions.html index.html
git commit --amend -m'Initial commit' index.html
git push -f origin gh-pages
git checkout master
git push origin master
