CURR_DIR="$(
    cd "$(dirname "$0")"
    pwd -P
)"

cd $CURR_DIR

cd ../shared
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs