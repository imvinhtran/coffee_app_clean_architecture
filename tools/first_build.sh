CURR_DIR="$(
    cd "$(dirname "$0")"
    pwd -P
)"

cd $CURR_DIR

# cd ../shared
# flutter clean
# flutter pub get
# dart run build_runner build --delete-conflicting-outputs

cd ../data
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs

cd ../domain
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs

cd ../app_initializer
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs

cd ../app
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
dart run slang