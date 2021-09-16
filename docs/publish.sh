# !/usr/bin/bash

rm -rf ./_book

gitbook build ./ ./docs

git add .

git commit -m "feat: init"

git push origin master