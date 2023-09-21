import 'package:flutter_test/flutter_test.dart';
import 'package:ptolemay_test/src/core/services/app_config.dart';
import 'package:ptolemay_test/src/features/app/app.dart';
import 'package:ptolemay_test/src/features/counter/counter.dart';

void main() {
  group(
    'App',
    () {
      testWidgets(
        'renders CounterPage',
        (tester) async {
          await tester.pumpWidget(const App(
            environment: Environment.prod,
          ));
          expect(find.byType(CounterPage), findsOneWidget);
        },
      );
    },
  );
}
