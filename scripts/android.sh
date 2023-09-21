flutter clean
flutter pub get
flutter gen-l10n --arb-dir="lib/l10n/arb"
dart run build_runner build --delete-conflicting-outputs