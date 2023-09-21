import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/bloc/counter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/counter.dart';
import 'package:ptolemay_test/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(
            create: (_) => CounterBloc(),
          ),
        ],
        child: const CounterPage(),
      ),
    );
  }
}
