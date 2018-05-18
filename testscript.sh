
#!/usr/bin/env bash

if [[ "$BUDDYBUILD_BRANCH" =~ "qa" ]]; then
cd $BUDDYBUILD_WORKSPACE
cd Battlecruiser/Battlecruiser/Global
sed -i "" "s/appProduction = true/appProduction = false/g" Environment.swift
sed -i "" "s/analyticsProduction = true/analyticsProduction = false/g" Environment.swift
sed -i "" "s/apiEnvironment = 0/apiEnvironment = 1/g" Environment.swift
cat Environment.swift
fi

if [[ "$BUDDYBUILD_BRANCH" =~ "staging" ]]; then
cd $BUDDYBUILD_WORKSPACE
cd Battlecruiser/Battlecruiser/Global
sed -i "" "s/appProduction = false/appProduction = true/g" Environment.swift
sed -i "" "s/analyticsProduction = true/analyticsProduction = false/g" Environment.swift
sed -i "" "s/apiEnvironment = 1/apiEnvironment = 0/g" Environment.swift
cat Environment.swift
fi

if [[ "$BUDDYBUILD_BRANCH" =~ "production" ]]; then
cd $BUDDYBUILD_WORKSPACE
cd Battlecruiser/Battlecruiser/Global
sed -i "" "s/appProduction = false/appProduction = true/g" Environment.swift
sed -i "" "s/analyticsProduction = false/analyticsProduction = true/g" Environment.swift
sed -i "" "s/apiEnvironment = 1/apiEnvironment = 0/g" Environment.swift
cat Environment.swift
git add .
git commit -m 'Production Build'
git push
fi
