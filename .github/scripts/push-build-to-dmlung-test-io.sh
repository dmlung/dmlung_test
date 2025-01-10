#!/usr/bin/env bash
readonly SCRIPT_NAME="$(basename "$0")"
function l { # Log a message to the terminal.
    echo
    echo -e "[$SCRIPT_NAME] ${1:-}"
}

# move to the root of the dmlung-test-io repo
cd "./dmlung-test-io"
echo "Open root of dmlung-test-io repo"

git add -A .
git config user.name github-actions
git config user.email github-actions@github.com
git commit -am "Updated Build folder replicated from dmlung_test"
git push
echo "Updated build folder successfully pushed to dmlung-test-io repo"