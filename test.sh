#!/usr/bin/env bash
echo "Starting prebuild script!"
echo "Working directory: $PWD"

echo "Patching sample.txt...."
sed -i "" "s/apiEnvironment = 5/apiEnvironment = 0/g" sample.txt

echo "Sample.txt contents:"

cat sample.txt
git add .
git commit -m 'Production Build'
git push 2>&1

