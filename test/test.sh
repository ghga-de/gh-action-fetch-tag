#!/bin/sh

git tag 0.0.0
git push origin 0.0.0
act -W test/test.yml
git push --delete origin 0.0.0
git tag -d 0.0.0
