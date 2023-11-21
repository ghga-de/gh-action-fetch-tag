#!/bin/sh

git tag 0.0.0
git push origin 0.0.0
act -W test/test.yml | grep -oP "(?<=latest_tag=)[0-9]\.[0-9]\.[0-9]"
git push --delete origin 0.0.0
git tag -d 0.0.0
