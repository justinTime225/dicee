#!/bin/sh
echo "Starting prebuild script!"
echo "Working directory: $PWD"

echo "Patching sample.txt...."
echo $NEVERCODE_BRANCH

echo "Sample.txt contents:" >> sample.txt
echo $NEVERCODE_BRANCH >> sample.txt

cat sample.txt
git config --global user.name "Justin"
git config --global user.email justinminh225@gmail.com
git add .
git commit -m 'Production Build'
git push

