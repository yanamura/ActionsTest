#!/bin/bash

RELEASE_BRANCH=$1

git config --global user.name "yanamura"
git config --global user.email "yanamura3@gmail.com"

# merge to master
git checkout master
git pull --rebase origin master
git merge origin/${RELEASE_BRANCH} --no-ff --no-edit
git push origin master

if [ $? -ne 0]; then
  echo "master merge failed"
  exit 1
fi

# add tag
VERSION=${RELEASE_BRANCH#release-*}
git tag v${VERSION}
git push origin --tags

if [ $? -ne 0]; then
  echo "add tag failed"
  exit 1
fi

# merge to develop
git checkout develop
git pull --rebase origin develop
git merge origin/${RELEASE_BRANCH} --no-ff --no-edit
git push origin develop

if [ $? -ne 0]; then
  echo "develop merge failed"
  exit 1
fi