#!/usr/bin/env bash
set -euo pipefail # strict mode
readonly SCRIPT_NAME="$(basename "$0")"
function l { # Log a message to the terminal.
    echo
    echo -e "[$SCRIPT_NAME] ${1:-}"
}

# Folders to copy from dmlung_test
BUILD_E_FOLDER=./dmlung_test/build/encoding
BUILD_FLD_FOLDER=./dmlung_test/build/field-level-documentation

# if the folder exists in dmlung_test, copy it to dmlung-test-io repo subfolder
if [ -d "$BUILD_E_FOLDER" ]; then
    echo "Copying $BUILD_E_FOLDER"
    cp -R ./dmlung_test/build/encoding $DESTINATION_PATH/encoding
fi

echo "Build encoding folder copied to $DESTINATION_PATH subfolder"

# if the folder exists in dmlung_test, copy it to dmlung-test-io repo subfolder
if [ -d "$BUILD_FLD_FOLDER" ]; then
    echo "Copying $BUILD_FLD_FOLDER"
    cp -R ./dmlung_test/build/field-level-documentation $DESTINATION_PATH/field-level-documentation
fi

echo "Build field-level-documentation folder copied to $DESTINATION_PATH subfolder"