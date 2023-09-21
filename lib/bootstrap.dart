import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:ptolemay_test/src/core/common/providers/theme_notifier.dart';
import 'package:ptolemay_test/src/features/counter/state/counter_bloc/counter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/state/weather_bloc/weather_bloc_bloc.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(Widget child) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();
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
}
