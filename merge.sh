#!/bin/bash

RELEASE_BRANCH=$1

git config --global user.name "yanamura"
git config --global user.email "yanamura3@gmail.com"

# merge to master
git checkout master
git pull --rebase origin master
git merge origin/${RELEASE_BRANCH} --no-ff --no-edit
git push origin master

# add tag
VERSION=${RELEASE_BRANCH#release-*}
git tag ${VERSION}
git push origin --tags

# merge to develop
git checkout develop
git pull --rebase origin develop
git merge origin/${RELEASE_BRANCH} --no-ff --no-edit
git push origin develop
