#!/usr/bin/env bash

# move to the root of the dmlung-test-io repo
cd $DESTINATION_REPO
echo "Open root of $DESTINATION_REPO repo"

git add -A .
git config user.name github-actions
git config user.email github-actions@github.com
git commit -am "Updated Build folder replicated"
git push
echo "Updated build folder successfully pushed to $DESTINATION_REPO repo"