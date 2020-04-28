#!/bin/bash

git config --global user.name "yanamura"
git config --global user.email "yanamura3@gmail.com"

echo hoge > README.md

git add .
git commit -m "hoge"
git push origin HEAD
