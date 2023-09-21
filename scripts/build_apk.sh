flutter clean
flutter pub get
flutter gen-l10n --arb-dir="lib/l10n/arb"
dart run build_runner build --delete-conflicting-outputs
flutter build apk --flavor production --target lib/main_production.dart --release --no-tree-shake-icons --no-shrink