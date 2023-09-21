// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ptolemay_test/src/core/common/components/animation_transition.dart';
import 'package:ptolemay_test/src/core/common/providers/config_wrapper.dart';
import 'package:ptolemay_test/src/core/common/providers/theme_notifier.dart';
import 'package:ptolemay_test/src/core/configs/theme/app_theme.dart';
import 'package:ptolemay_test/src/core/services/app_config.dart';
import 'package:ptolemay_test/src/core/services/dependencies_container.dart';
import 'package:ptolemay_test/src/features/counter/counter.dart';
import 'package:ptolemay_test/l10n/l10n.dart';

class App extends StatefulWidget {
  final Environment environment;
  const App({super.key, required this.environment});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final BaseConfig _config;

  @override
  void initState() {
    _config = configMap[widget.environment]!;

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (BuildContext context, value, Widget? child) {
        return ConfigWrapper(
          config: _config,
          child: MaterialApp(
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            title: "Ptolemay",
            onGenerateTitle: (context) => "Ptolemay",
            locale: const Locale("en"),
            themeMode: value.isDark ? ThemeMode.dark : ThemeMode.light,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: DarkTransition(
              childBuilder: (context, value) {
                return const CounterScreen();
              },
              offset: dependenciesContainer.position ?? Offset.zero,
              isDark: context.themeNotifier.isDark,
              lightTheme: AppTheme.light,
              darkTheme: AppTheme.dark,
            ),
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.0,
                ),
                child: child ?? const SizedBox(),
              );
            },
          ),
        );
      },
    );
  }
}

class CounterPage {
  const CounterPage();
}
