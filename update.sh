#!/bin/sh

rm -f generic
mv generic-arm generic
cp -a ../packages/repos/* .
for f in $(find -type l); do 
    cp --remove-destination `readlink -f "$f"` "$f"
done
mv generic generic-arm
ln -s generic-arm generic
git add .
git commit -m "sync: latest build"
git push
