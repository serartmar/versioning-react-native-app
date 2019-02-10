#!/usr/bin/env bash

git fetch --tags

# create temp branch
git checkout -b release/temp_$(git rev-parse --short HEAD)

# Add changelog
changelog
git add CHANGELOG.md
