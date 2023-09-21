import 'package:ptolemay_test/src/core/services/app_config.dart';
import 'package:ptolemay_test/src/features/app/app.dart';
import 'package:ptolemay_test/bootstrap.dart';

void main() {
  bootstrap(
    const App(
      environment: Environment.stg,
    ),
  );
}
