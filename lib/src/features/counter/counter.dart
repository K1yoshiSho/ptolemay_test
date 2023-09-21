import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/core/common/components/animation_transition.dart';
import 'package:ptolemay_test/src/core/common/providers/theme_notifier.dart';
import 'package:ptolemay_test/src/core/configs/styles/palette.dart';
import 'package:ptolemay_test/src/core/configs/styles/styles.dart';
import 'package:ptolemay_test/src/core/configs/theme/app_theme.dart';
import 'package:ptolemay_test/src/core/services/dependencies_container.dart';
import 'package:ptolemay_test/src/features/counter/presentation/components/switcher_theme_button.dart';
import 'package:ptolemay_test/src/features/counter/state/counter_bloc/counter_bloc.dart';
import 'package:ptolemay_test/l10n/l10n.dart';
import 'package:ptolemay_test/src/features/counter/state/weather_bloc/weather_bloc_bloc.dart';
import 'package:weather/weather.dart';

part 'presentation/components/counter_body.dart';
part 'presentation/screen/counter_screen.dart';
