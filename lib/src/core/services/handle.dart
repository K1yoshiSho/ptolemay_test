import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/core/services/dependencies_container.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_settings.dart';

/// [Talker] - This class contains methods for handling errors and logging.

/// `initHandling` - This function initializes handling of the app.

Future<void> initHandling({required Talker talker}) async {
  FlutterError.presentError = (details) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      talker.handle(details.exception, details.stack);
    });
  };

  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: const TalkerBlocLoggerSettings(
      printEventFullData: true,
      printChanges: false,
      printStateFullData: true,
    ),
  );

  PlatformDispatcher.instance.onError = (error, stack) {
    dependenciesContainer.talker.handle(error, stack);
    return true;
  };

  FlutterError.onError = (details) => dependenciesContainer.talker.handle(details.exception, details.stack);
}
