
#!/usr/bin/env bash

sed -i "" "s/apiEnvironment = 5/apiEnvironment = 0/g" sample.txt
cat sample.txt
git add .
git commit -m 'Production Build'
git push

