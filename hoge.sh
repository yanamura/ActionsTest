#!/bin/bash

RELEASE_BRANCH=release-1.0.0

echo ${RELEASE_BRANCH}

echo ${RELEASE_BRANCH#release-*}
