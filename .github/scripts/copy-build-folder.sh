#!/usr/bin/env bash
set -euo pipefail # strict mode

DESTINATION_PATH=$DESTINATION_REPO$DESTINATION_TAG

# Folders to copy from dmlung_test
BUILD_E_FOLDER=./dmlung_test/build/encoding
BUILD_FLD_FOLDER=./dmlung_test/build/field-level-documentation

# if the folder exists in dmlung_test, copy it to dmlung-test-io repo subfolder
if [ -d "$BUILD_E_FOLDER" ]; then
    echo "Copying $BUILD_E_FOLDER to $DESTINATION_PATH"
    mkdir $DESTINATION_PATH
    cp -R $BUILD_E_FOLDER $DESTINATION_PATH
fi

echo "$BUILD_E_FOLDER folder copied to $DESTINATION_PATH"

# if the folder exists in dmlung_test, copy it to dmlung-test-io repo subfolder
if [ -d "$BUILD_FLD_FOLDER" ]; then
    echo "Copying $BUILD_FLD_FOLDER to $DESTINATION_PATH"
    cp -R $BUILD_FLD_FOLDER $DESTINATION_PATH
fi

echo "$BUILD_FLD_FOLDER folder copied to $DESTINATION_PATH"