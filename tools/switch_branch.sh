CURR_DIR="$(
    cd "$(dirname "$0")"
    pwd -P
)"

cd $CURR_DIR

cd ../data
dart run build_runner build --delete-conflicting-outputs
cd ../domain
dart run build_runner build --delete-conflicting-outputs
cd ../app
dart run build_runner build --delete-conflicting-outputs
dart run slang
cd ../shared
dart run build_runner build --delete-conflicting-outputs
