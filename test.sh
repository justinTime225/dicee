#!/bin/sh
echo "Starting prebuild script!"
echo "Working directory: $PWD"

echo "Patching sample.txt...."
sed -i "" "s/apiEnvironment = 5/apiEnvironment = 0/g" sample.txt

echo "Sample.txt contents:"

cat sample.txt
git config --global user.name "Justin"
git config --global user.email justinminh225@gmail.com
git add .
git commit -m 'Production Build'
git push

