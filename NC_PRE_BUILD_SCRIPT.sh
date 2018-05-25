#!/bin/sh

if [[ "$NEVERCODE_BRANCH" =~ "master" ]]; then
echo `master`
echo "master BRANCH log!"
fi

if [[ "$NEVERCODE_BRANCH" =~ "qa" ]]; then
echo `qa`
echo "qa BRANCH log!"
fi

