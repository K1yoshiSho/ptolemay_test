import 'dart:async';
import 'dart:developer';
import 'dart:ui';
import 'package:ptolemay_test/src/core/services/dependencies_container.dart';
import 'package:ptolemay_test/src/core/services/handle.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:ptolemay_test/src/core/common/providers/theme_notifier.dart';
import 'package:ptolemay_test/src/features/counter/state/counter_bloc/counter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/state/weather_bloc/weather_bloc_bloc.dart';

Future<void> bootstrap(Widget child) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(() async {
    // Sets debugZoneErrorsAreFatal to true which ensures that any errors occurring in the framework during startup are treated as fatal.
    BindingBase.debugZoneErrorsAreFatal = true;
    // Ensures that the Flutter app is initialized with WidgetsFlutterBinding.
    WidgetsFlutterBinding.ensureInitialized();

    if (kIsWeb == false) {
      DartPluginRegistrant.ensureInitialized();
    }
    // Initializes the talker service of the app.
    Talker talker = TalkerFlutter.init();

    initHandling(talker: talker);

    dependenciesContainer.registerTalker(talker);
    dependenciesContainer.talker.good('App is started :D');
    runApp(
      MultiProvider(providers: [
        BlocProvider<CounterBloc>(
          create: (_) => CounterBloc(),
        ),
        BlocProvider<WeatherBloc>(
          create: (_) => WeatherBloc(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeNotifier(),
        ),
      ], child: child),
    );
  }, (error, stackTrace) {
    dependenciesContainer.talker.handle(error, stackTrace);
  });
}
