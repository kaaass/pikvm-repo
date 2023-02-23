#!/bin/sh

rm -rf generic-arm
cp -a ../packages/repos/* .
for f in $(find -type l); do 
    cp --remove-destination `readlink -f "$f"` "$f"
done
cp -a generic generic-arm
git add .
git commit -m "sync: latest build"
git push
