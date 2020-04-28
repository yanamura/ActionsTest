#!/bin/bash

git config --global user.name "yanamura"
git config --global user.email "yanamura3@gmail.com"

sed -i 'hoge' README.md

git add .
git commit -m "hoge"
git push