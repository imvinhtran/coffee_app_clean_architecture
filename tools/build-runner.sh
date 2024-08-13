#!/bin/bash
CURR_DIR="$(
    cd "$(dirname "$0")"
    pwd -P
)"

cd $CURR_DIR

read a
cd ../$a
dart run build_runner build --delete-conflicting-outputs
cd ..