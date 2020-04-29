#!/bin/bash

git config --global user.name "yanamura"
git config --global user.email "yanamura3@gmail.com"

cat hoge.txt >> README.md

echo $1

git checkout $1
git add .
git commit -m "hoge"
git push origin HEAD
