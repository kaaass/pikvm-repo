#!/bin/sh

cp -a ../packages/repos/* .
for f in $(find -type l); do 
    cp --remove-destination `readlink -f "$f"` "$f"
done
git add .
git commit -m "sync: latest build"
git push
