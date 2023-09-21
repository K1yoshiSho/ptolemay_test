// ignore_for_file: depend_on_referenced_packages

library talker_screens;

// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_button/group_button.dart';
import 'package:ptolemay_test/src/core/common/components/app_bar/flexible_app_bar.dart';
import 'package:ptolemay_test/src/core/common/components/bottom_sheet.dart';
import 'package:ptolemay_test/src/core/common/components/textfields/outlined_textfield.dart';
import 'package:ptolemay_test/src/core/configs/styles/colors_extensions.dart';
import 'package:ptolemay_test/src/core/configs/styles/palette.dart';
import 'package:ptolemay_test/src/core/configs/styles/styles.dart';
import 'package:ptolemay_test/src/core/configs/styles/themes.dart';

import 'package:talker_flutter/src/controller/talker_view_controller.dart';
import 'package:talker_flutter/src/ui/theme/default_theme.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'view/components/base_card.dart';
part 'view/components/bottom_sheets/action_bottom_sheet.dart';
part 'view/components/bottom_sheets/base_sheet.dart';
part 'view/components/bottom_sheets/settings.dart';
part 'view/components/data_card.dart';
part 'view/components/monitor_screens/http_screen.dart';
part 'view/components/monitor_screens/typed_log_screen.dart';
part 'view/components/settings_card.dart';
part 'view/components/talker_monitor.dart';
part 'view/components/talker_monitor_card.dart';
part 'view/screens/talker_screen.dart';
