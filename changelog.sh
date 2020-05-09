#!/bin/bash

changelog=$(git log $(git tag --sort version:refname | tail -n 1)..$1 --merges --reverse --pretty=format:"* %b")

changelog="${changelog//'%'/'%25'}"
changelog="${changelog//$'\n'/'%0A'}"
changelog="${changelog//$'\r'/'%0D'}"

echo "::set-output name=changelog::$changelog"