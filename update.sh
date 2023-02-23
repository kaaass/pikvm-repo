#!/bin/sh

cp -a ../packages/repos/* .
git add .
git commit -m "sync: latest build"
git push
